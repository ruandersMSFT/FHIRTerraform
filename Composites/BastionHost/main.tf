locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "bastion" {
  name                = "${var.resource_prefix}Bastion-PIP"
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "this" {
  name                = "${var.resource_prefix}Bastion"
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion.id
  }
}
