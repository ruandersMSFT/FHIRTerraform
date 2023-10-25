locals {

}

module "APIManagement" {
  source = "../../Modules/ApiManagement"

  location            = var.location
  name                = var.name
  publisher_email     = var.publisher_email
  publisher_name      = var.publisher_name
  resource_group_name = var.resource_group_name
  resource_prefix     = var.resource_prefix
  sku_name            = var.sku_name
  subnet_id           = var.subnet_id
}

resource "azurerm_api_management_backend" "contextFrontendAppBackend" {
  name                = "contextFrontendAppBackend"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  protocol            = "http"
  url                 = "https://${var.static_site_hostname}"

  depends_on = [
    module.APIManagement
  ]
}

resource "azurerm_api_management_backend" "export" {
  name                = "export"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  protocol            = "http"
  url                 = "https://${var.aad_function_hostname}/api"

  depends_on = [
    module.APIManagement
  ]
}

resource "azurerm_api_management_backend" "fhir" {
  name                = "fhir"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  protocol            = "http"
  url                 = var.fhir_service_url

  depends_on = [
    module.APIManagement
  ]
}

resource "azurerm_api_management_backend" "smartAuth" {
  name                = "smartAuth"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  protocol            = "http"
  url                 = "https://${var.aad_function_hostname}/api"

  depends_on = [
    module.APIManagement
  ]
}

resource "azurerm_api_management_named_value" "audience" {
  name                = "Audience"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  display_name        = "Audience"
  value               = "https://${module.APIManagement.hostname}/smart"

  depends_on = [
    module.APIManagement
  ]
}

resource "azurerm_api_management_named_value" "tenantid" {
  name                = "TenantId"
  resource_group_name = var.resource_group_name
  api_management_name = module.APIManagement.name
  display_name        = "TenantId"
  value               = var.tenant_id

  depends_on = [
    module.APIManagement
  ]
}

module "SMARTAuthAPI" {
  source = "./SMARTAuthAPI"

  api_management_name = module.APIManagement.name
  resource_group_name = var.resource_group_name
  a                   = "https://${var.aad_function_hostname}/api"

  depends_on = [
    module.APIManagement,
    azurerm_api_management_backend.contextFrontendAppBackend,
    azurerm_api_management_backend.smartAuth,
    azurerm_api_management_named_value.audience
  ]
}

module "SMARTv1" {
  source = "./SMARTv1"

  api_management_name = module.APIManagement.name
  resource_group_name = var.resource_group_name
  base_url            = var.process_message_function_url

  depends_on = [
    module.APIManagement,
    azurerm_api_management_backend.export,
    azurerm_api_management_named_value.tenantid
  ]
}

module "FHIRAuth" {
  source = "./FHIRAuth"

  tenant_id = var.tenant_id

  api_management_name = module.APIManagement.name
  resource_group_name = var.resource_group_name
  azure_audience      = var.azure_audience

  depends_on = [
    module.APIManagement,
    azurerm_api_management_backend.export,
    azurerm_api_management_named_value.tenantid
  ]
}

module "FHIR" {
  source = "./FHIR"

  api_management_name = module.APIManagement.name
  resource_group_name = var.resource_group_name
  fhir_service_url    = var.fhir_service_url

  depends_on = [
    module.APIManagement,
    azurerm_api_management_backend.export,
    azurerm_api_management_named_value.tenantid
  ]
}
