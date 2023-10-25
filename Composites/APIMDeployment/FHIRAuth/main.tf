locals {
  api_name = "FHIR-Auth"
}

resource "azurerm_api_management_api" "this" {
  api_management_name   = var.api_management_name
  name                  = local.api_name
  display_name          = "FHIR Auth"
  path                  = "basicAuth"
  service_url           = "https://login.microsoftonline.com/${var.tenant_id}/oauth2/token"
  protocols             = ["https"]
  resource_group_name   = var.resource_group_name
  revision              = "1"
  subscription_required = false
}


resource "azurerm_api_management_api_operation" "service-principle-fhir" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  description         = "Service Principle FHIR"
  display_name        = "Service Principle FHIR"
  method              = "POST"
  operation_id        = "service-principle-fhir"
  resource_group_name = var.resource_group_name
  url_template        = "/"
  response {
    description = "null"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "service-principle-fhir" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "service-principle-fhir"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/service-principle-fhir.tftpl",
    { azure_audience = var.azure_audience }
  )

  depends_on = [
    azurerm_api_management_api_operation.service-principle-fhir,
  ]
}
