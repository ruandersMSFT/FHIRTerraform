# -
# - Get the current user config
# -
data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

locals {
  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)

  default_network_acls = {
    bypass                     = "AzureServices"
    default_action             = "Allow" # todo now russell Deny? vs private endpoint
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
  disable_network_acls = {
    bypass                     = "None"
    default_action             = "Allow"
    ip_rules                   = null
    virtual_network_subnet_ids = null
  }

  merged_network_acls = var.network_acls != null ? merge(local.default_network_acls, var.network_acls) : null
}

# -
# - Setup key vault 
# -
resource "azurerm_key_vault" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  tenant_id           = data.azurerm_client_config.current.tenant_id

  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  purge_protection_enabled        = var.purge_protection_enabled

  sku_name = var.sku_name

  dynamic "network_acls" {
    for_each = local.merged_network_acls == null ? [local.default_network_acls] : [local.merged_network_acls]
    content {
      bypass                     = network_acls.value.bypass
      default_action             = network_acls.value.default_action
      ip_rules                   = network_acls.value.ip_rules
      virtual_network_subnet_ids = network_acls.value.virtual_network_subnet_ids
    }
  }

  tags = var.tags
}

module "PrivateEndpoint" {
  count = local.deploy_private_endpoint ? 1 : 0
  source = "../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "keyvault" 
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_key_vault.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["vault"]
  tags                = var.tags
}
