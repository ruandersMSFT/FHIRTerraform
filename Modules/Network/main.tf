locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  name                = "${var.resource_prefix}${var.name}"
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name
  address_space       = ["10.20.30.0/24"]

  subnet {
    name           = "subnet"
    address_prefix = "10.20.30.0/25"
  }

  subnet {
    name           = "JumpBox"
    address_prefix = "10.20.30.216/29"
  }

  subnet {
    name           = "GatewaySubnet"
    address_prefix = "10.20.30.224/27"
  }

  tags = var.tags
}