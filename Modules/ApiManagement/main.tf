locals {
}

resource "azurerm_api_management" "this" {
  location             = var.location
  name                 = "${var.resource_prefix}${var.name}"
  publisher_email      = var.publisher_email
  publisher_name       = var.publisher_name
  resource_group_name  = var.resource_group_name
  sku_name             = var.sku_name
  virtual_network_type = var.subnet_id == null ? "None" : "Internal" #todo Russell - should None be External?

  dynamic "virtual_network_configuration" {
    for_each = var.subnet_id == null ? [] : ["fake"]
    content {
      subnet_id = var.subnet_id
    }
  }

  identity {
    type = "SystemAssigned"
  }
}
