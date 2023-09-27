# #############################################################################
# # OUTPUTS Linux Function App
# #############################################################################

output "id" {
  value = azurerm_linux_function_app.this.id
}

output "name" {
  value = azurerm_linux_function_app.this.name
}

output "default_hostname" {
  value = azurerm_linux_function_app.this.default_hostname
}

output "default_hosturl" {
  value = "https://${azurerm_linux_function_app.this.default_hostname}"
}

output "default_function_key" {
  value = data.azurerm_function_app_host_keys.this.default_function_key
}

output "principal_id" {
  value = azurerm_linux_function_app.this.identity[0].principal_id
}
