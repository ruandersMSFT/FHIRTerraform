locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# -
# - Virtual Network
# -
resource "azurerm_virtual_network" "this" {
  name                = "${var.resource_prefix}${var.name}"
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "AzureBastionSubnet"
    address_prefix = "10.0.2.0/24"
    #security_group = azurerm_network_security_group.example.id
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.3.0/24"
  }

  tags = var.tags
}