locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_servicebus_namespace" "this" {
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  sku                 = var.sku
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_servicebus_namespace.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["namespace"]
  tags                = var.tags
}
