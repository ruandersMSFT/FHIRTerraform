output "id" {
  value = azurerm_storage_account.this.id
}

output "name" {
  value = "${local.storage_resource_prefix}${var.name}"
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_access_key" {
  value = azurerm_storage_account.this.primary_access_key
}
