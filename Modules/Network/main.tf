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
  address_space       = ["10.20.30.0/24"]
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet"
    address_prefix = "10.20.30.0/25"
  }

  subnet {
    name           = "JumpBox"
    address_prefix = "10.20.30.216/29"
    #security_group = azurerm_network_security_group.example.id
  }

  subnet {
    name           = "GatewaySubnet"
    address_prefix = "10.20.30.224/27"
  }

  tags = var.tags
}