locals {
}

resource "azurerm_app_configuration" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_app_configuration_key" "keys" {
  for_each = var.keys

  configuration_store_id = azurerm_app_configuration.this.id
  key                    = each.key
  value                  = each.value
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  location            = var.location
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_app_configuration.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["configurationStores"]
  tags                = var.tags
}
