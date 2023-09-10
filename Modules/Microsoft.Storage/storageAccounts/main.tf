locals {
  storage_resource_prefix_lower = lower(var.resource_prefix)
  storage_resource_prefix = replace(local.storage_resource_prefix_lower, "-", "")

  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)
}

# -
# - Get the current user config
# -
data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

locals {
  default_network_rules = {
    bypass                     = ["AzureServices"]
    default_action             = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
  disable_network_rules = {
    bypass                     = ["None"]
    default_action             = "Allow"
    ip_rules                   = null
    virtual_network_subnet_ids = null
  }
}

# -
# - Storage Account
# -
resource "azurerm_storage_account" "this" {
  name                      = "${local.storage_resource_prefix}${var.name}"
  resource_group_name       = var.resource_group_name
  location                  = coalesce(var.location, data.azurerm_resource_group.this.location)
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  account_kind              = var.account_kind
  access_tier               = var.access_tier
  enable_https_traffic_only = true
  min_tls_version           = var.min_tls_version
  large_file_share_enabled  = coalesce(var.large_file_share_enabled, false)
  is_hns_enabled            = var.is_hns_enabled

  dynamic "identity" {
    for_each = var.assign_identity == false ? [] : list(lookup("assign_identity", false))
    content {
      type = "SystemAssigned"
    }
  }

/*
  dynamic "network_rules" {
    for_each = lookup(each.value, "network_rules", null) != null ? [merge(local.default_network_rules, lookup(each.value, "network_rules", null))] : [local.default_network_rules]
    content {
      bypass                     = network_rules.value.bypass
      default_action             = network_rules.value.default_action
      ip_rules                   = network_rules.value.ip_rules
      virtual_network_subnet_ids = network_rules.value.virtual_network_subnet_ids
    }
  }
  */
  tags = var.tags
}

/*
# -
# - Container
# -
resource "azurerm_storage_container" "this" {
  for_each              = var.containers
  name                  = each.value["name"]
  storage_account_name  = each.value["storage_account_name"]
  container_access_type = coalesce(lookup(each.value, "container_access_type"), "private")
  depends_on = [
    azurerm_storage_account.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

# -
# - Blob
# -
resource "azurerm_storage_blob" "this" {
  for_each               = local.blobs
  name                   = each.value["name"]
  storage_account_name   = each.value["storage_account_name"]
  storage_container_name = each.value["storage_container_name"]
  type                   = each.value["type"]
  size                   = lookup(each.value, "size", null)
  content_type           = lookup(each.value, "content_type", null)
  source_uri             = lookup(each.value, "source_uri", null)
  metadata               = lookup(each.value, "metadata", null)
  depends_on = [
    azurerm_storage_account.this,
    azurerm_storage_container.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

# -
# - Queue
# -
resource "azurerm_storage_queue" "this" {
  for_each             = var.queues
  name                 = each.value["name"]
  storage_account_name = each.value["storage_account_name"]
  depends_on = [
    azurerm_storage_account.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

# -
# - File Share
# -
resource "azurerm_storage_share" "this" {
  for_each             = var.file_shares
  name                 = each.value["name"]
  storage_account_name = each.value["storage_account_name"]
  quota                = coalesce(lookup(each.value, "quota"), 110)
  depends_on = [
    azurerm_storage_account.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

# -
# - Table
# -
resource "azurerm_storage_table" "this" {
  for_each             = var.tables
  name                 = each.value["name"]
  storage_account_name = each.value["storage_account_name"]
  depends_on = [
    azurerm_storage_account.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

# -
# - Data Lake Gen2 FileSystem
# -
resource "azurerm_storage_data_lake_gen2_filesystem" "this" {
  for_each           = var.adlsfilesystems
  name               = each.value["name"]
  storage_account_id = azurerm_storage_account.this[each.value["sa_id"]].id
  depends_on = [
    azurerm_storage_account.this,
    azurerm_private_endpoint.this,
    azurerm_private_dns_a_record.this
  ]
}

*/

module "PrivateEndpoint" {
  count = local.deploy_private_endpoint ? 1 : 0
  source = "../../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name = var.name # todo now russell
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id = azurerm_storage_account.this.id
  subresource_names = ["blob"]
  subnet_id = var.subnet_id
  tags = var.tags
}
