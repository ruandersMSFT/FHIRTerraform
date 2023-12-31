resource "azurerm_healthcare_fhir_service" "this" {
  configuration_export_storage_account_name = var.configuration_export_storage_account_name
  location                                  = var.location
  name                                      = "${var.resource_prefix}${var.name}"
  resource_group_name                       = var.resource_group_name
  workspace_id                              = var.azurerm_healthcare_workspace_id
  authentication {
    audience            = var.authentication_audience
    authority           = var.authentication_authority
    smart_proxy_enabled = "false"
  }
  identity {
    type = "SystemAssigned"
  }
  tags = var.tags
}
