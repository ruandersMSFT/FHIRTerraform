locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# -
# - API Management
# -
resource "azurerm_api_management" "this" {
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "${var.resource_prefix}${var.name}"
  publisher_email     = var.publisher_email
  publisher_name      = var.publisher_name
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  virtual_network_type = var.virtual_network_type
  #todo now russell
  #virtual_network_configuration {
  #  subnet_id = var.subnet_id
  #}
  identity {
    type = "SystemAssigned"
  }
}
