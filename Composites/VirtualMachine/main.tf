
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_network_interface" "FHIRJump" {
  name                = "${var.resource_prefix}NIC"
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "FHIRJump" {
  name                = "${var.resource_prefix}1"
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  size                = "Standard_D2s_v3"
  admin_username      = "FHIRadmin"
  admin_password      = ""
  network_interface_ids = [
    azurerm_network_interface.FHIRJump.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "microsoftwindowsdesktop"
    offer     = "windows-11"
    sku       = "win11-22h2-pro"
    version   = "latest"
  }
}
