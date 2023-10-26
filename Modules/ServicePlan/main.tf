locals {
}

resource "azurerm_service_plan" "this" {
  location            = var.location
  name                = "${var.resource_prefix}${var.name}"
  os_type             = var.os_type
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tags                = var.tags
}
