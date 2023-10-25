output "id" {
  value = azurerm_healthcare_fhir_service.this.id
}

output "FhirServerUrl" {
  value = "https://${var.workspace_name}-${var.name}.fhir.azurehealthcareapis.com"
}
