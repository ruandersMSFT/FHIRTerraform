output "id" {
  value = azurerm_servicebus_namespace.this.id
}

output "name" {
  value = "${var.resource_prefix}${var.name}"
}

output "default_primary_connection_string" {
  value = azurerm_servicebus_namespace.this.default_primary_connection_string
}
