locals {
  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# -
# - App Configuration
# -
resource "azurerm_app_configuration" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  sku                 = var.sku

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

# todo Russell There needs to be a system assigned identity permission added here to the Keyvault to read secrets

resource "azurerm_app_configuration_key" "keys" {
  for_each = var.keys

  configuration_store_id = azurerm_app_configuration.this.id
  key                    = each.key
  value                  = each.value
}

module "PrivateEndpoint" {
  count  = 1
  source = "../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_app_configuration.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["configurationStores"]
  tags                = var.tags
}
