output "id" {
  value = azurerm_static_site.this.id
}

output "api_key" {
  value = azurerm_static_site.this.api_key
}

output "default_host_name" {
  value = azurerm_static_site.this.default_host_name
}

output "default_host_url" {
  value = "https://${azurerm_static_site.this.default_host_name}"
}
