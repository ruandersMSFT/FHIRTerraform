locals {
}

resource "azurerm_servicebus_namespace" "this" {
  location            = var.location
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  sku                 = var.sku
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  location            = var.location
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_servicebus_namespace.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["namespace"]
  tags                = var.tags
}
