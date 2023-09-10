# #############################################################################
# # OUTPUTS App Configuration
# #############################################################################

output "id" {
  value = azurerm_app_configuration.this.id
}

output "primary_read_key" {
  value = azurerm_app_configuration.this.primary_read_key
}

output "primary_write_key2" {
  value = azurerm_app_configuration.this.primary_write_key
}