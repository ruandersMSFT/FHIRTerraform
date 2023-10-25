locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "this" {
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "${var.resource_prefix}${var.name}"
  os_type             = var.os_type
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tags                = var.tags
}
