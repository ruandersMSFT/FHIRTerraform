output "id" {
  value = azurerm_api_management.this.id
}

output "name" {
  value = "${var.resource_prefix}${var.name}"
}

output "hostname" {
  value = "${var.name}.azure-api.net"
}
