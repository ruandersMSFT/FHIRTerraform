output "id" {
  value = azurerm_monitor_private_link_scope.this.id
}

output "name" {
  value = "${var.resource_prefix}${var.name}"
}
