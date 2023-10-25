output "id" {
  value = azurerm_virtual_network.this.id
}

output "name" {
  value = azurerm_virtual_network.this.name
}

output "subnet1_subnet_id" {
  value = "${azurerm_virtual_network.this.id}/subnets/subnet1"
}

output "bastion_subnet_id" {
  value = "${azurerm_virtual_network.this.id}/subnets/AzureBastionSubnet"
}
