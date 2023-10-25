locals {
  api_name = "cdc-fhir-swagger-import"
}

data "azurerm_client_config" "current" {}

resource "azurerm_api_management_api" "this" {
  api_management_name   = var.api_management_name
  name                  = local.api_name
  description           = "HAPI FHIR Server"
  display_name          = "CDC-FHIR-SWAGGER-IMPORT"
  path                  = "fhir"
  service_url           = var.fhir_service_url
  protocols             = ["https"]
  resource_group_name   = var.resource_group_name
  revision              = "1"
  subscription_required = false
}

resource "azurerm_api_management_api_operation" "res-26" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id}/$validate - GET VALIDATE"
  display_name        = "/Patient/{id}/$validate - GET VALIDATE"
  method              = "GET"
  operation_id        = "63bc41cff1968e70577080da"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}/$validate"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Patient-id-validateGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-27" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id}/$validate - GET VALIDATE"
  display_name        = "/Bundle/{id}/$validate - GET VALIDATE"
  method              = "GET"
  operation_id        = "63bc422536d4528069629b06"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}/$validate"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Bundle-id-validateGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-28" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/$validate - POST VALIDATE"
  display_name        = "/Bundle/$validate - POST VALIDATE"
  method              = "POST"
  operation_id        = "63bc424a81d6ba9883461118"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/$validate"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-29" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/{id} - DELETE"
  display_name        = "/Account/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-account-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Account-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-30" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/{id} - DELETE"
  display_name        = "/ActivityDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-activitydefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ActivityDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-31" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/{id} - DELETE"
  display_name        = "/AdverseEvent/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-adverseevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AdverseEvent-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-32" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/{id} - DELETE"
  display_name        = "/AllergyIntolerance/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-allergyintolerance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AllergyIntolerance-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-33" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/{id} - DELETE"
  display_name        = "/Appointment/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-appointment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Appointment-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-34" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/{id} - DELETE"
  display_name        = "/AppointmentResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-appointmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AppointmentResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-35" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/{id} - DELETE"
  display_name        = "/AuditEvent/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-auditevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AuditEvent-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-36" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/{id} - DELETE"
  display_name        = "/Basic/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-basic-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Basic-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-37" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/{id} - DELETE"
  display_name        = "/Binary/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-binary-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Binary-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-38" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/{id} - DELETE"
  display_name        = "/BodySite/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-bodysite-id"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "BodySite-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-39" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id} - DELETE"
  display_name        = "/Bundle/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-bundle-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Bundle-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-40" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/{id} - DELETE"
  display_name        = "/CapabilityStatement/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-capabilitystatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CapabilityStatement-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-41" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/{id} - DELETE"
  display_name        = "/CarePlan/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-careplan-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CarePlan-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-42" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/{id} - DELETE"
  display_name        = "/CareTeam/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-careteam-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CareTeam-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-43" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/{id} - DELETE"
  display_name        = "/ChargeItem/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-chargeitem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ChargeItem-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-44" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/{id} - DELETE"
  display_name        = "/Claim/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-claim-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Claim-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-45" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/{id} - DELETE"
  display_name        = "/ClaimResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-claimresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ClaimResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-46" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/{id} - DELETE"
  display_name        = "/ClinicalImpression/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-clinicalimpression-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ClinicalImpression-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-47" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/{id} - DELETE"
  display_name        = "/CodeSystem/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-codesystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CodeSystem-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-48" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/{id} - DELETE"
  display_name        = "/Communication/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-communication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Communication-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-49" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/{id} - DELETE"
  display_name        = "/CommunicationRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-communicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CommunicationRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-50" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/{id} - DELETE"
  display_name        = "/CompartmentDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-compartmentdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CompartmentDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-51" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/{id} - DELETE"
  display_name        = "/Composition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-composition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Composition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-52" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/{id} - DELETE"
  display_name        = "/ConceptMap/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-conceptmap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ConceptMap-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-53" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/{id} - DELETE"
  display_name        = "/Condition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-condition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Condition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-54" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/{id} - DELETE"
  display_name        = "/Consent/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-consent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Consent-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-55" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/{id} - DELETE"
  display_name        = "/Contract/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-contract-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Contract-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-56" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/{id} - DELETE"
  display_name        = "/Coverage/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-coverage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Coverage-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-57" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/{id} - DELETE"
  display_name        = "/DataElement/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-dataelement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DataElement-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-58" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/{id} - DELETE"
  display_name        = "/DetectedIssue/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-detectedissue-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DetectedIssue-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-59" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/{id} - DELETE"
  display_name        = "/Device/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-device-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Device-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-60" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/{id} - DELETE"
  display_name        = "/DeviceComponent/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-devicecomponent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceComponent-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-61" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/{id} - DELETE"
  display_name        = "/DeviceMetric/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-devicemetric-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceMetric-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-62" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/{id} - DELETE"
  display_name        = "/DeviceRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-devicerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-63" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/{id} - DELETE"
  display_name        = "/DeviceUseStatement/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-deviceusestatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceUseStatement-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-64" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/{id} - DELETE"
  display_name        = "/DiagnosticReport/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-diagnosticreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DiagnosticReport-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-65" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/{id} - DELETE"
  display_name        = "/DocumentManifest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-documentmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DocumentManifest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-66" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/{id} - DELETE"
  display_name        = "/DocumentReference/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-documentreference-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DocumentReference-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-67" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/{id} - DELETE"
  display_name        = "/EligibilityRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-eligibilityrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EligibilityRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-68" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/{id} - DELETE"
  display_name        = "/EligibilityResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-eligibilityresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EligibilityResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-69" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/{id} - DELETE"
  display_name        = "/Encounter/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-encounter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Encounter-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-70" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/{id} - DELETE"
  display_name        = "/Endpoint/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-endpoint-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Endpoint-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-71" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/{id} - DELETE"
  display_name        = "/EnrollmentRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-enrollmentrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EnrollmentRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-72" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/{id} - DELETE"
  display_name        = "/EnrollmentResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-enrollmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EnrollmentResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-73" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/{id} - DELETE"
  display_name        = "/EpisodeOfCare/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-episodeofcare-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EpisodeOfCare-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-74" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/{id} - DELETE"
  display_name        = "/ExpansionProfile/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-expansionprofile-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ExpansionProfile-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-75" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/{id} - DELETE"
  display_name        = "/ExplanationOfBenefit/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-explanationofbenefit-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ExplanationOfBenefit-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-76" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/{id} - DELETE"
  display_name        = "/FamilyMemberHistory/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-familymemberhistory-id"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "FamilyMemberHistory-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-77" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/{id} - DELETE"
  display_name        = "/Flag/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-flag-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Flag-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-78" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/{id} - DELETE"
  display_name        = "/Goal/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-goal-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Goal-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-79" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/{id} - DELETE"
  display_name        = "/GraphDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-graphdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "GraphDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-80" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/{id} - DELETE"
  display_name        = "/Group/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-group-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Group-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-81" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/{id} - DELETE"
  display_name        = "/GuidanceResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-guidanceresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "GuidanceResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-82" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/{id} - DELETE"
  display_name        = "/HealthcareService/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-healthcareservice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "HealthcareService-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-83" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/{id} - DELETE"
  display_name        = "/ImagingManifest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-imagingmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImagingManifest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-84" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/{id} - DELETE"
  display_name        = "/ImagingStudy/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-imagingstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImagingStudy-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-85" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/{id} - DELETE"
  display_name        = "/Immunization/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-immunization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Immunization-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-86" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/{id} - DELETE"
  display_name        = "/ImmunizationRecommendation/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-immunizationrecommendation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImmunizationRecommendation-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-87" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/{id} - DELETE"
  display_name        = "/ImplementationGuide/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-implementationguide-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImplementationGuide-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-88" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/{id} - DELETE"
  display_name        = "/Library/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-library-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Library-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-89" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/{id} - DELETE"
  display_name        = "/Linkage/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-linkage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Linkage-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-90" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/{id} - DELETE"
  display_name        = "/List/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-list-id"
  resource_group_name = var.resource_group_name
  url_template        = "/List/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "List-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-91" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/{id} - DELETE"
  display_name        = "/Location/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-location-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Location-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-92" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/{id} - DELETE"
  display_name        = "/Measure/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-measure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Measure-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-93" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/{id} - DELETE"
  display_name        = "/MeasureReport/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-measurereport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MeasureReport-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-94" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/{id} - DELETE"
  display_name        = "/Media/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-media-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Media-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-95" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/{id} - DELETE"
  display_name        = "/Medication/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-medication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Medication-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-96" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/{id} - DELETE"
  display_name        = "/MedicationAdministration/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-medicationadministration-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationAdministration-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-97" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/{id} - DELETE"
  display_name        = "/MedicationDispense/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-medicationdispense-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationDispense-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-98" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/{id} - DELETE"
  display_name        = "/MedicationRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-medicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-99" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/{id} - DELETE"
  display_name        = "/MedicationStatement/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-medicationstatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationStatement-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-100" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/{id} - DELETE"
  display_name        = "/MessageDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-messagedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MessageDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-101" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/{id} - DELETE"
  display_name        = "/MessageHeader/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-messageheader-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MessageHeader-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-102" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/{id} - DELETE"
  display_name        = "/NamingSystem/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-namingsystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "NamingSystem-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-103" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/{id} - DELETE"
  display_name        = "/NutritionOrder/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-nutritionorder-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "NutritionOrder-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-104" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/{id} - DELETE"
  display_name        = "/Observation/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-observation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Observation-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-105" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/{id} - DELETE"
  display_name        = "/OperationDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-operationdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "OperationDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-106" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/{id} - DELETE"
  display_name        = "/OperationOutcome/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-operationoutcome-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "OperationOutcome-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-107" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/{id} - DELETE"
  display_name        = "/Organization/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-organization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Organization-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-108" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/{id} - DELETE"
  display_name        = "/Parameters/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-parameters-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Parameters-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-109" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id} - DELETE"
  display_name        = "/Patient/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-patient-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Patient-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-110" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/{id} - DELETE"
  display_name        = "/PaymentNotice/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-paymentnotice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PaymentNotice-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-111" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/{id} - DELETE"
  display_name        = "/PaymentReconciliation/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-paymentreconciliation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PaymentReconciliation-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-112" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/{id} - DELETE"
  display_name        = "/Person/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-person-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Person-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-113" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/{id} - DELETE"
  display_name        = "/PlanDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-plandefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PlanDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-114" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/{id} - DELETE"
  display_name        = "/Practitioner/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-practitioner-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Practitioner-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-115" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/{id} - DELETE"
  display_name        = "/PractitionerRole/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-practitionerrole-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PractitionerRole-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-116" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/{id} - DELETE"
  display_name        = "/Procedure/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-procedure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Procedure-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-117" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/{id} - DELETE"
  display_name        = "/ProcedureRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-procedurerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcedureRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-118" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/{id} - DELETE"
  display_name        = "/ProcessRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-processrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcessRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-119" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/{id} - DELETE"
  display_name        = "/ProcessResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-processresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcessResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-120" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/{id} - DELETE"
  display_name        = "/Provenance/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-provenance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Provenance-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-121" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/{id} - DELETE"
  display_name        = "/Questionnaire/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-questionnaire-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Questionnaire-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-122" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/{id} - DELETE"
  display_name        = "/QuestionnaireResponse/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-questionnaireresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "QuestionnaireResponse-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-123" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/{id} - DELETE"
  display_name        = "/ReferralRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-referralrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ReferralRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-124" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/{id} - DELETE"
  display_name        = "/RelatedPerson/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-relatedperson-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RelatedPerson-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-125" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/{id} - DELETE"
  display_name        = "/RequestGroup/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-requestgroup-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RequestGroup-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-126" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/{id} - DELETE"
  display_name        = "/ResearchStudy/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-researchstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ResearchStudy-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-127" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/{id} - DELETE"
  display_name        = "/ResearchSubject/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-researchsubject-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ResearchSubject-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-128" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/{id} - DELETE"
  display_name        = "/RiskAssessment/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-riskassessment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RiskAssessment-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-129" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/{id} - DELETE"
  display_name        = "/Schedule/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-schedule-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Schedule-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-130" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/{id} - DELETE"
  display_name        = "/SearchParameter/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-searchparameter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SearchParameter-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-131" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/{id} - DELETE"
  display_name        = "/Sequence/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-sequence-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Sequence-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-132" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/{id} - DELETE"
  display_name        = "/ServiceDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-servicedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ServiceDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-133" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/{id} - DELETE"
  display_name        = "/Slot/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-slot-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Slot-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-134" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/{id} - DELETE"
  display_name        = "/Specimen/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-specimen-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Specimen-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-135" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/{id} - DELETE"
  display_name        = "/StructureDefinition/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-structuredefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "StructureDefinition-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-136" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/{id} - DELETE"
  display_name        = "/StructureMap/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-structuremap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "StructureMap-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-137" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/{id} - DELETE"
  display_name        = "/Subscription/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-subscription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Subscription-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-138" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/{id} - DELETE"
  display_name        = "/Substance/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-substance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Substance-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-139" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/{id} - DELETE"
  display_name        = "/SupplyDelivery/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-supplydelivery-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SupplyDelivery-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-140" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/{id} - DELETE"
  display_name        = "/SupplyRequest/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-supplyrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SupplyRequest-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-141" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/{id} - DELETE"
  display_name        = "/Task/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-task-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Task-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-142" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/{id} - DELETE"
  display_name        = "/TestReport/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-testreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "TestReport-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-143" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/{id} - DELETE"
  display_name        = "/TestScript/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-testscript-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "TestScript-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-144" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/{id} - DELETE"
  display_name        = "/ValueSet/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-valueset-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ValueSet-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-145" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/{id} - DELETE"
  display_name        = "/VisionPrescription/{id} - DELETE"
  method              = "DELETE"
  operation_id        = "delete-visionprescription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "VisionPrescription-id-DeleteRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-146" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account - GET"
  display_name        = "/Account - GET"
  method              = "GET"
  operation_id        = "get-account"
  resource_group_name = var.resource_group_name
  url_template        = "/Account"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-147" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/_history - GET"
  display_name        = "/Account/_history - GET"
  method              = "GET"
  operation_id        = "get-account-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-148" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/{id} - GET"
  display_name        = "/Account/{id} - GET"
  method              = "GET"
  operation_id        = "get-account-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Account-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-149" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/{id}/_history - GET"
  display_name        = "/Account/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-account-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Account-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-150" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/{id}/_history/{vid} - GET"
  display_name        = "/Account/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-account-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Account-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Account-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-151" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition - GET"
  display_name        = "/ActivityDefinition - GET"
  method              = "GET"
  operation_id        = "get-activitydefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-152" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/_history - GET"
  display_name        = "/ActivityDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-activitydefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-153" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/{id} - GET"
  display_name        = "/ActivityDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-activitydefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ActivityDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-154" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/{id}/_history - GET"
  display_name        = "/ActivityDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-activitydefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ActivityDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-155" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/{id}/_history/{vid} - GET"
  display_name        = "/ActivityDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-activitydefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ActivityDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ActivityDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-156" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent - GET"
  display_name        = "/AdverseEvent - GET"
  method              = "GET"
  operation_id        = "get-adverseevent"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-157" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/_history - GET"
  display_name        = "/AdverseEvent/_history - GET"
  method              = "GET"
  operation_id        = "get-adverseevent-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-158" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/{id} - GET"
  display_name        = "/AdverseEvent/{id} - GET"
  method              = "GET"
  operation_id        = "get-adverseevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AdverseEvent-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-159" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/{id}/_history - GET"
  display_name        = "/AdverseEvent/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-adverseevent-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AdverseEvent-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-160" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/{id}/_history/{vid} - GET"
  display_name        = "/AdverseEvent/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-adverseevent-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AdverseEvent-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AdverseEvent-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-161" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance - GET"
  display_name        = "/AllergyIntolerance - GET"
  method              = "GET"
  operation_id        = "get-allergyintolerance"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-162" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/_history - GET"
  display_name        = "/AllergyIntolerance/_history - GET"
  method              = "GET"
  operation_id        = "get-allergyintolerance-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-163" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/{id} - GET"
  display_name        = "/AllergyIntolerance/{id} - GET"
  method              = "GET"
  operation_id        = "get-allergyintolerance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AllergyIntolerance-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-164" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/{id}/_history - GET"
  display_name        = "/AllergyIntolerance/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-allergyintolerance-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AllergyIntolerance-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-165" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/{id}/_history/{vid} - GET"
  display_name        = "/AllergyIntolerance/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-allergyintolerance-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AllergyIntolerance-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AllergyIntolerance-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-166" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment - GET"
  display_name        = "/Appointment - GET"
  method              = "GET"
  operation_id        = "get-appointment"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-167" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/_history - GET"
  display_name        = "/Appointment/_history - GET"
  method              = "GET"
  operation_id        = "get-appointment-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-168" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/{id} - GET"
  display_name        = "/Appointment/{id} - GET"
  method              = "GET"
  operation_id        = "get-appointment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Appointment-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-169" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/{id}/_history - GET"
  display_name        = "/Appointment/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-appointment-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Appointment-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-170" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/{id}/_history/{vid} - GET"
  display_name        = "/Appointment/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-appointment-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Appointment-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Appointment-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-171" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse - GET"
  display_name        = "/AppointmentResponse - GET"
  method              = "GET"
  operation_id        = "get-appointmentresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-172" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/_history - GET"
  display_name        = "/AppointmentResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-appointmentresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-173" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/{id} - GET"
  display_name        = "/AppointmentResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-appointmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AppointmentResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-174" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/{id}/_history - GET"
  display_name        = "/AppointmentResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-appointmentresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AppointmentResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-175" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/{id}/_history/{vid} - GET"
  display_name        = "/AppointmentResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-appointmentresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AppointmentResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AppointmentResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-176" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent - GET"
  display_name        = "/AuditEvent - GET"
  method              = "GET"
  operation_id        = "get-auditevent"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-177" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/_history - GET"
  display_name        = "/AuditEvent/_history - GET"
  method              = "GET"
  operation_id        = "get-auditevent-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-178" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/{id} - GET"
  display_name        = "/AuditEvent/{id} - GET"
  method              = "GET"
  operation_id        = "get-auditevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AuditEvent-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-179" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/{id}/_history - GET"
  display_name        = "/AuditEvent/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-auditevent-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AuditEvent-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-180" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/{id}/_history/{vid} - GET"
  display_name        = "/AuditEvent/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-auditevent-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AuditEvent-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "AuditEvent-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-181" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic - GET"
  display_name        = "/Basic - GET"
  method              = "GET"
  operation_id        = "get-basic"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-182" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/_history - GET"
  display_name        = "/Basic/_history - GET"
  method              = "GET"
  operation_id        = "get-basic-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-183" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/{id} - GET"
  display_name        = "/Basic/{id} - GET"
  method              = "GET"
  operation_id        = "get-basic-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Basic-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-184" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/{id}/_history - GET"
  display_name        = "/Basic/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-basic-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Basic-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-185" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/{id}/_history/{vid} - GET"
  display_name        = "/Basic/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-basic-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Basic-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Basic-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-186" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary - GET"
  display_name        = "/Binary - GET"
  method              = "GET"
  operation_id        = "get-binary"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-187" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/_history - GET"
  display_name        = "/Binary/_history - GET"
  method              = "GET"
  operation_id        = "get-binary-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-188" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/{id} - GET"
  display_name        = "/Binary/{id} - GET"
  method              = "GET"
  operation_id        = "get-binary-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Binary-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-189" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/{id}/_history - GET"
  display_name        = "/Binary/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-binary-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Binary-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-190" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/{id}/_history/{vid} - GET"
  display_name        = "/Binary/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-binary-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Binary-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Binary-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-191" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite - GET"
  display_name        = "/BodySite - GET"
  method              = "GET"
  operation_id        = "get-bodysite"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-192" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/_history - GET"
  display_name        = "/BodySite/_history - GET"
  method              = "GET"
  operation_id        = "get-bodysite-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-193" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/{id} - GET"
  display_name        = "/BodySite/{id} - GET"
  method              = "GET"
  operation_id        = "get-bodysite-id"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "BodySite-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-194" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/{id}/_history - GET"
  display_name        = "/BodySite/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-bodysite-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "BodySite-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-195" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/{id}/_history/{vid} - GET"
  display_name        = "/BodySite/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-bodysite-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "BodySite-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "BodySite-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-196" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle - GET"
  display_name        = "/Bundle - GET"
  method              = "GET"
  operation_id        = "get-bundle"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-197" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/_history - GET"
  display_name        = "/Bundle/_history - GET"
  method              = "GET"
  operation_id        = "get-bundle-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-198" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id} - GET"
  display_name        = "/Bundle/{id} - GET"
  method              = "GET"
  operation_id        = "get-bundle-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Bundle-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-199" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id}/_history - GET"
  display_name        = "/Bundle/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-bundle-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Bundle-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-200" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id}/_history/{vid} - GET"
  display_name        = "/Bundle/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-bundle-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Bundle-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Bundle-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-201" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement - GET"
  display_name        = "/CapabilityStatement - GET"
  method              = "GET"
  operation_id        = "get-capabilitystatement"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-202" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/_history - GET"
  display_name        = "/CapabilityStatement/_history - GET"
  method              = "GET"
  operation_id        = "get-capabilitystatement-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-203" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/{id} - GET"
  display_name        = "/CapabilityStatement/{id} - GET"
  method              = "GET"
  operation_id        = "get-capabilitystatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CapabilityStatement-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-204" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/{id}/_history - GET"
  display_name        = "/CapabilityStatement/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-capabilitystatement-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CapabilityStatement-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-205" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/{id}/_history/{vid} - GET"
  display_name        = "/CapabilityStatement/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-capabilitystatement-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CapabilityStatement-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CapabilityStatement-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-206" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan - GET"
  display_name        = "/CarePlan - GET"
  method              = "GET"
  operation_id        = "get-careplan"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-207" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/_history - GET"
  display_name        = "/CarePlan/_history - GET"
  method              = "GET"
  operation_id        = "get-careplan-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-208" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/{id} - GET"
  display_name        = "/CarePlan/{id} - GET"
  method              = "GET"
  operation_id        = "get-careplan-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CarePlan-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-209" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/{id}/_history - GET"
  display_name        = "/CarePlan/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-careplan-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CarePlan-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-210" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/{id}/_history/{vid} - GET"
  display_name        = "/CarePlan/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-careplan-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CarePlan-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CarePlan-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-211" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam - GET"
  display_name        = "/CareTeam - GET"
  method              = "GET"
  operation_id        = "get-careteam"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-212" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/_history - GET"
  display_name        = "/CareTeam/_history - GET"
  method              = "GET"
  operation_id        = "get-careteam-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-213" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/{id} - GET"
  display_name        = "/CareTeam/{id} - GET"
  method              = "GET"
  operation_id        = "get-careteam-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CareTeam-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-214" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/{id}/_history - GET"
  display_name        = "/CareTeam/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-careteam-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CareTeam-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-215" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/{id}/_history/{vid} - GET"
  display_name        = "/CareTeam/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-careteam-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CareTeam-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CareTeam-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-216" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem - GET"
  display_name        = "/ChargeItem - GET"
  method              = "GET"
  operation_id        = "get-chargeitem"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-217" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/_history - GET"
  display_name        = "/ChargeItem/_history - GET"
  method              = "GET"
  operation_id        = "get-chargeitem-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-218" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/{id} - GET"
  display_name        = "/ChargeItem/{id} - GET"
  method              = "GET"
  operation_id        = "get-chargeitem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ChargeItem-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-219" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/{id}/_history - GET"
  display_name        = "/ChargeItem/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-chargeitem-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ChargeItem-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-220" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/{id}/_history/{vid} - GET"
  display_name        = "/ChargeItem/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-chargeitem-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ChargeItem-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ChargeItem-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-221" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim - GET"
  display_name        = "/Claim - GET"
  method              = "GET"
  operation_id        = "get-claim"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-222" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/_history - GET"
  display_name        = "/Claim/_history - GET"
  method              = "GET"
  operation_id        = "get-claim-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-223" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/{id} - GET"
  display_name        = "/Claim/{id} - GET"
  method              = "GET"
  operation_id        = "get-claim-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Claim-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-224" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/{id}/_history - GET"
  display_name        = "/Claim/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-claim-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Claim-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-225" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/{id}/_history/{vid} - GET"
  display_name        = "/Claim/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-claim-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Claim-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Claim-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-226" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse - GET"
  display_name        = "/ClaimResponse - GET"
  method              = "GET"
  operation_id        = "get-claimresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-227" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/_history - GET"
  display_name        = "/ClaimResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-claimresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-228" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/{id} - GET"
  display_name        = "/ClaimResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-claimresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClaimResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-229" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/{id}/_history - GET"
  display_name        = "/ClaimResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-claimresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClaimResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-230" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/{id}/_history/{vid} - GET"
  display_name        = "/ClaimResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-claimresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClaimResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClaimResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-231" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression - GET"
  display_name        = "/ClinicalImpression - GET"
  method              = "GET"
  operation_id        = "get-clinicalimpression"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-232" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/_history - GET"
  display_name        = "/ClinicalImpression/_history - GET"
  method              = "GET"
  operation_id        = "get-clinicalimpression-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-233" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/{id} - GET"
  display_name        = "/ClinicalImpression/{id} - GET"
  method              = "GET"
  operation_id        = "get-clinicalimpression-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClinicalImpression-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-234" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/{id}/_history - GET"
  display_name        = "/ClinicalImpression/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-clinicalimpression-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClinicalImpression-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-235" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/{id}/_history/{vid} - GET"
  display_name        = "/ClinicalImpression/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-clinicalimpression-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClinicalImpression-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ClinicalImpression-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-236" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem - GET"
  display_name        = "/CodeSystem - GET"
  method              = "GET"
  operation_id        = "get-codesystem"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-237" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/_history - GET"
  display_name        = "/CodeSystem/_history - GET"
  method              = "GET"
  operation_id        = "get-codesystem-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-238" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/{id} - GET"
  display_name        = "/CodeSystem/{id} - GET"
  method              = "GET"
  operation_id        = "get-codesystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CodeSystem-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-239" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/{id}/_history - GET"
  display_name        = "/CodeSystem/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-codesystem-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CodeSystem-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-240" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/{id}/_history/{vid} - GET"
  display_name        = "/CodeSystem/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-codesystem-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CodeSystem-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CodeSystem-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-241" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication - GET"
  display_name        = "/Communication - GET"
  method              = "GET"
  operation_id        = "get-communication"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-242" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/_history - GET"
  display_name        = "/Communication/_history - GET"
  method              = "GET"
  operation_id        = "get-communication-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-243" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/{id} - GET"
  display_name        = "/Communication/{id} - GET"
  method              = "GET"
  operation_id        = "get-communication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Communication-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-244" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/{id}/_history - GET"
  display_name        = "/Communication/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-communication-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Communication-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-245" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/{id}/_history/{vid} - GET"
  display_name        = "/Communication/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-communication-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Communication-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Communication-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-246" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest - GET"
  display_name        = "/CommunicationRequest - GET"
  method              = "GET"
  operation_id        = "get-communicationrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-247" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/_history - GET"
  display_name        = "/CommunicationRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-communicationrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-248" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/{id} - GET"
  display_name        = "/CommunicationRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-communicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CommunicationRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-249" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/{id}/_history - GET"
  display_name        = "/CommunicationRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-communicationrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CommunicationRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this0" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/{id}/_history/{vid} - GET"
  display_name        = "/CommunicationRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-communicationrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CommunicationRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CommunicationRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this1" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition - GET"
  display_name        = "/CompartmentDefinition - GET"
  method              = "GET"
  operation_id        = "get-compartmentdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this2" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/_history - GET"
  display_name        = "/CompartmentDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-compartmentdefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this3" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/{id} - GET"
  display_name        = "/CompartmentDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-compartmentdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CompartmentDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this4" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/{id}/_history - GET"
  display_name        = "/CompartmentDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-compartmentdefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CompartmentDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this5" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/{id}/_history/{vid} - GET"
  display_name        = "/CompartmentDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-compartmentdefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CompartmentDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "CompartmentDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this6" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition - GET"
  display_name        = "/Composition - GET"
  method              = "GET"
  operation_id        = "get-composition"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this7" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/_history - GET"
  display_name        = "/Composition/_history - GET"
  method              = "GET"
  operation_id        = "get-composition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this8" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/{id} - GET"
  display_name        = "/Composition/{id} - GET"
  method              = "GET"
  operation_id        = "get-composition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Composition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "this9" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/{id}/_history - GET"
  display_name        = "/Composition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-composition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Composition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-260" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/{id}/_history/{vid} - GET"
  display_name        = "/Composition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-composition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Composition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Composition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-261" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap - GET"
  display_name        = "/ConceptMap - GET"
  method              = "GET"
  operation_id        = "get-conceptmap"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-262" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/_history - GET"
  display_name        = "/ConceptMap/_history - GET"
  method              = "GET"
  operation_id        = "get-conceptmap-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-263" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/{id} - GET"
  display_name        = "/ConceptMap/{id} - GET"
  method              = "GET"
  operation_id        = "get-conceptmap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ConceptMap-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-264" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/{id}/_history - GET"
  display_name        = "/ConceptMap/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-conceptmap-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ConceptMap-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-265" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/{id}/_history/{vid} - GET"
  display_name        = "/ConceptMap/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-conceptmap-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ConceptMap-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ConceptMap-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-266" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition - GET"
  display_name        = "/Condition - GET"
  method              = "GET"
  operation_id        = "get-condition"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-267" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/_history - GET"
  display_name        = "/Condition/_history - GET"
  method              = "GET"
  operation_id        = "get-condition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-268" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/{id} - GET"
  display_name        = "/Condition/{id} - GET"
  method              = "GET"
  operation_id        = "get-condition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Condition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-269" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/{id}/_history - GET"
  display_name        = "/Condition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-condition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Condition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-270" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/{id}/_history/{vid} - GET"
  display_name        = "/Condition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-condition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Condition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Condition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-271" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent - GET"
  display_name        = "/Consent - GET"
  method              = "GET"
  operation_id        = "get-consent"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-272" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/_history - GET"
  display_name        = "/Consent/_history - GET"
  method              = "GET"
  operation_id        = "get-consent-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-273" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/{id} - GET"
  display_name        = "/Consent/{id} - GET"
  method              = "GET"
  operation_id        = "get-consent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Consent-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-274" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/{id}/_history - GET"
  display_name        = "/Consent/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-consent-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Consent-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-275" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/{id}/_history/{vid} - GET"
  display_name        = "/Consent/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-consent-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Consent-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Consent-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-276" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract - GET"
  display_name        = "/Contract - GET"
  method              = "GET"
  operation_id        = "get-contract"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-277" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/_history - GET"
  display_name        = "/Contract/_history - GET"
  method              = "GET"
  operation_id        = "get-contract-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-278" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/{id} - GET"
  display_name        = "/Contract/{id} - GET"
  method              = "GET"
  operation_id        = "get-contract-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Contract-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-279" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/{id}/_history - GET"
  display_name        = "/Contract/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-contract-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Contract-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-280" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/{id}/_history/{vid} - GET"
  display_name        = "/Contract/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-contract-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Contract-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Contract-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-281" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage - GET"
  display_name        = "/Coverage - GET"
  method              = "GET"
  operation_id        = "get-coverage"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-282" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/_history - GET"
  display_name        = "/Coverage/_history - GET"
  method              = "GET"
  operation_id        = "get-coverage-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-283" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/{id} - GET"
  display_name        = "/Coverage/{id} - GET"
  method              = "GET"
  operation_id        = "get-coverage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Coverage-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-284" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/{id}/_history - GET"
  display_name        = "/Coverage/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-coverage-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Coverage-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-285" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/{id}/_history/{vid} - GET"
  display_name        = "/Coverage/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-coverage-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Coverage-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Coverage-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-286" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement - GET"
  display_name        = "/DataElement - GET"
  method              = "GET"
  operation_id        = "get-dataelement"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-287" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/_history - GET"
  display_name        = "/DataElement/_history - GET"
  method              = "GET"
  operation_id        = "get-dataelement-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-288" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/{id} - GET"
  display_name        = "/DataElement/{id} - GET"
  method              = "GET"
  operation_id        = "get-dataelement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DataElement-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-289" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/{id}/_history - GET"
  display_name        = "/DataElement/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-dataelement-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DataElement-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-290" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/{id}/_history/{vid} - GET"
  display_name        = "/DataElement/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-dataelement-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DataElement-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DataElement-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-291" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue - GET"
  display_name        = "/DetectedIssue - GET"
  method              = "GET"
  operation_id        = "get-detectedissue"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-292" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/_history - GET"
  display_name        = "/DetectedIssue/_history - GET"
  method              = "GET"
  operation_id        = "get-detectedissue-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-293" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/{id} - GET"
  display_name        = "/DetectedIssue/{id} - GET"
  method              = "GET"
  operation_id        = "get-detectedissue-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DetectedIssue-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-294" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/{id}/_history - GET"
  display_name        = "/DetectedIssue/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-detectedissue-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DetectedIssue-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-295" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/{id}/_history/{vid} - GET"
  display_name        = "/DetectedIssue/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-detectedissue-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DetectedIssue-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DetectedIssue-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-296" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device - GET"
  display_name        = "/Device - GET"
  method              = "GET"
  operation_id        = "get-device"
  resource_group_name = var.resource_group_name
  url_template        = "/Device"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-297" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/_history - GET"
  display_name        = "/Device/_history - GET"
  method              = "GET"
  operation_id        = "get-device-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-298" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/{id} - GET"
  display_name        = "/Device/{id} - GET"
  method              = "GET"
  operation_id        = "get-device-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Device-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-299" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/{id}/_history - GET"
  display_name        = "/Device/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-device-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Device-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-300" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/{id}/_history/{vid} - GET"
  display_name        = "/Device/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-device-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Device-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Device-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-301" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent - GET"
  display_name        = "/DeviceComponent - GET"
  method              = "GET"
  operation_id        = "get-devicecomponent"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-302" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/_history - GET"
  display_name        = "/DeviceComponent/_history - GET"
  method              = "GET"
  operation_id        = "get-devicecomponent-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-303" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/{id} - GET"
  display_name        = "/DeviceComponent/{id} - GET"
  method              = "GET"
  operation_id        = "get-devicecomponent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceComponent-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-304" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/{id}/_history - GET"
  display_name        = "/DeviceComponent/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-devicecomponent-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceComponent-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-305" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/{id}/_history/{vid} - GET"
  display_name        = "/DeviceComponent/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-devicecomponent-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceComponent-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceComponent-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-306" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric - GET"
  display_name        = "/DeviceMetric - GET"
  method              = "GET"
  operation_id        = "get-devicemetric"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-307" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/_history - GET"
  display_name        = "/DeviceMetric/_history - GET"
  method              = "GET"
  operation_id        = "get-devicemetric-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-308" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/{id} - GET"
  display_name        = "/DeviceMetric/{id} - GET"
  method              = "GET"
  operation_id        = "get-devicemetric-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceMetric-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-309" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/{id}/_history - GET"
  display_name        = "/DeviceMetric/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-devicemetric-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceMetric-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-310" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/{id}/_history/{vid} - GET"
  display_name        = "/DeviceMetric/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-devicemetric-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceMetric-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceMetric-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-311" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest - GET"
  display_name        = "/DeviceRequest - GET"
  method              = "GET"
  operation_id        = "get-devicerequest"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-312" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/_history - GET"
  display_name        = "/DeviceRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-devicerequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-313" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/{id} - GET"
  display_name        = "/DeviceRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-devicerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-314" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/{id}/_history - GET"
  display_name        = "/DeviceRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-devicerequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-315" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/{id}/_history/{vid} - GET"
  display_name        = "/DeviceRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-devicerequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-316" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement - GET"
  display_name        = "/DeviceUseStatement - GET"
  method              = "GET"
  operation_id        = "get-deviceusestatement"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-317" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/_history - GET"
  display_name        = "/DeviceUseStatement/_history - GET"
  method              = "GET"
  operation_id        = "get-deviceusestatement-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-318" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/{id} - GET"
  display_name        = "/DeviceUseStatement/{id} - GET"
  method              = "GET"
  operation_id        = "get-deviceusestatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceUseStatement-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-319" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/{id}/_history - GET"
  display_name        = "/DeviceUseStatement/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-deviceusestatement-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceUseStatement-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-320" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/{id}/_history/{vid} - GET"
  display_name        = "/DeviceUseStatement/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-deviceusestatement-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceUseStatement-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DeviceUseStatement-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-321" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport - GET"
  display_name        = "/DiagnosticReport - GET"
  method              = "GET"
  operation_id        = "get-diagnosticreport"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-322" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/_history - GET"
  display_name        = "/DiagnosticReport/_history - GET"
  method              = "GET"
  operation_id        = "get-diagnosticreport-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-323" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/{id} - GET"
  display_name        = "/DiagnosticReport/{id} - GET"
  method              = "GET"
  operation_id        = "get-diagnosticreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DiagnosticReport-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-324" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/{id}/_history - GET"
  display_name        = "/DiagnosticReport/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-diagnosticreport-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DiagnosticReport-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-325" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/{id}/_history/{vid} - GET"
  display_name        = "/DiagnosticReport/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-diagnosticreport-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DiagnosticReport-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DiagnosticReport-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-326" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest - GET"
  display_name        = "/DocumentManifest - GET"
  method              = "GET"
  operation_id        = "get-documentmanifest"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-327" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/_history - GET"
  display_name        = "/DocumentManifest/_history - GET"
  method              = "GET"
  operation_id        = "get-documentmanifest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-328" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/{id} - GET"
  display_name        = "/DocumentManifest/{id} - GET"
  method              = "GET"
  operation_id        = "get-documentmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentManifest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-329" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/{id}/_history - GET"
  display_name        = "/DocumentManifest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-documentmanifest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentManifest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-330" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/{id}/_history/{vid} - GET"
  display_name        = "/DocumentManifest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-documentmanifest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentManifest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentManifest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-331" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference - GET"
  display_name        = "/DocumentReference - GET"
  method              = "GET"
  operation_id        = "get-documentreference"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-332" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/_history - GET"
  display_name        = "/DocumentReference/_history - GET"
  method              = "GET"
  operation_id        = "get-documentreference-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-333" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/{id} - GET"
  display_name        = "/DocumentReference/{id} - GET"
  method              = "GET"
  operation_id        = "get-documentreference-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentReference-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-334" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/{id}/_history - GET"
  display_name        = "/DocumentReference/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-documentreference-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentReference-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-335" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/{id}/_history/{vid} - GET"
  display_name        = "/DocumentReference/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-documentreference-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentReference-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "DocumentReference-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-336" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest - GET"
  display_name        = "/EligibilityRequest - GET"
  method              = "GET"
  operation_id        = "get-eligibilityrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-337" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/_history - GET"
  display_name        = "/EligibilityRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-eligibilityrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-338" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/{id} - GET"
  display_name        = "/EligibilityRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-eligibilityrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-339" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/{id}/_history - GET"
  display_name        = "/EligibilityRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-eligibilityrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-340" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/{id}/_history/{vid} - GET"
  display_name        = "/EligibilityRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-eligibilityrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-341" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse - GET"
  display_name        = "/EligibilityResponse - GET"
  method              = "GET"
  operation_id        = "get-eligibilityresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-342" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/_history - GET"
  display_name        = "/EligibilityResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-eligibilityresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-343" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/{id} - GET"
  display_name        = "/EligibilityResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-eligibilityresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-344" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/{id}/_history - GET"
  display_name        = "/EligibilityResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-eligibilityresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-345" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/{id}/_history/{vid} - GET"
  display_name        = "/EligibilityResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-eligibilityresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EligibilityResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-346" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter - GET"
  display_name        = "/Encounter - GET"
  method              = "GET"
  operation_id        = "get-encounter"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-347" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/_history - GET"
  display_name        = "/Encounter/_history - GET"
  method              = "GET"
  operation_id        = "get-encounter-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-348" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/{id} - GET"
  display_name        = "/Encounter/{id} - GET"
  method              = "GET"
  operation_id        = "get-encounter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Encounter-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-349" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/{id}/_history - GET"
  display_name        = "/Encounter/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-encounter-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Encounter-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-350" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/{id}/_history/{vid} - GET"
  display_name        = "/Encounter/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-encounter-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Encounter-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Encounter-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-351" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint - GET"
  display_name        = "/Endpoint - GET"
  method              = "GET"
  operation_id        = "get-endpoint"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-352" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/_history - GET"
  display_name        = "/Endpoint/_history - GET"
  method              = "GET"
  operation_id        = "get-endpoint-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-353" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/{id} - GET"
  display_name        = "/Endpoint/{id} - GET"
  method              = "GET"
  operation_id        = "get-endpoint-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Endpoint-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-354" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/{id}/_history - GET"
  display_name        = "/Endpoint/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-endpoint-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Endpoint-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-355" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/{id}/_history/{vid} - GET"
  display_name        = "/Endpoint/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-endpoint-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Endpoint-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Endpoint-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-356" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest - GET"
  display_name        = "/EnrollmentRequest - GET"
  method              = "GET"
  operation_id        = "get-enrollmentrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-357" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/_history - GET"
  display_name        = "/EnrollmentRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-enrollmentrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-358" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/{id} - GET"
  display_name        = "/EnrollmentRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-enrollmentrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-359" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/{id}/_history - GET"
  display_name        = "/EnrollmentRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-enrollmentrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-360" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/{id}/_history/{vid} - GET"
  display_name        = "/EnrollmentRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-enrollmentrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-361" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse - GET"
  display_name        = "/EnrollmentResponse - GET"
  method              = "GET"
  operation_id        = "get-enrollmentresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-362" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/_history - GET"
  display_name        = "/EnrollmentResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-enrollmentresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-363" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/{id} - GET"
  display_name        = "/EnrollmentResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-enrollmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-364" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/{id}/_history - GET"
  display_name        = "/EnrollmentResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-enrollmentresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-365" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/{id}/_history/{vid} - GET"
  display_name        = "/EnrollmentResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-enrollmentresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EnrollmentResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-366" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare - GET"
  display_name        = "/EpisodeOfCare - GET"
  method              = "GET"
  operation_id        = "get-episodeofcare"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-367" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/_history - GET"
  display_name        = "/EpisodeOfCare/_history - GET"
  method              = "GET"
  operation_id        = "get-episodeofcare-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-368" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/{id} - GET"
  display_name        = "/EpisodeOfCare/{id} - GET"
  method              = "GET"
  operation_id        = "get-episodeofcare-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EpisodeOfCare-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-369" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/{id}/_history - GET"
  display_name        = "/EpisodeOfCare/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-episodeofcare-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EpisodeOfCare-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-370" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/{id}/_history/{vid} - GET"
  display_name        = "/EpisodeOfCare/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-episodeofcare-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EpisodeOfCare-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "EpisodeOfCare-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-371" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile - GET"
  display_name        = "/ExpansionProfile - GET"
  method              = "GET"
  operation_id        = "get-expansionprofile"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-372" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/_history - GET"
  display_name        = "/ExpansionProfile/_history - GET"
  method              = "GET"
  operation_id        = "get-expansionprofile-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-373" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/{id} - GET"
  display_name        = "/ExpansionProfile/{id} - GET"
  method              = "GET"
  operation_id        = "get-expansionprofile-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExpansionProfile-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-374" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/{id}/_history - GET"
  display_name        = "/ExpansionProfile/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-expansionprofile-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExpansionProfile-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-375" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/{id}/_history/{vid} - GET"
  display_name        = "/ExpansionProfile/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-expansionprofile-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExpansionProfile-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExpansionProfile-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-376" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit - GET"
  display_name        = "/ExplanationOfBenefit - GET"
  method              = "GET"
  operation_id        = "get-explanationofbenefit"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-377" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/_history - GET"
  display_name        = "/ExplanationOfBenefit/_history - GET"
  method              = "GET"
  operation_id        = "get-explanationofbenefit-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-378" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/{id} - GET"
  display_name        = "/ExplanationOfBenefit/{id} - GET"
  method              = "GET"
  operation_id        = "get-explanationofbenefit-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExplanationOfBenefit-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-379" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/{id}/_history - GET"
  display_name        = "/ExplanationOfBenefit/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-explanationofbenefit-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExplanationOfBenefit-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-380" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/{id}/_history/{vid} - GET"
  display_name        = "/ExplanationOfBenefit/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-explanationofbenefit-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExplanationOfBenefit-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ExplanationOfBenefit-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-381" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory - GET"
  display_name        = "/FamilyMemberHistory - GET"
  method              = "GET"
  operation_id        = "get-familymemberhistory"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-382" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/_history - GET"
  display_name        = "/FamilyMemberHistory/_history - GET"
  method              = "GET"
  operation_id        = "get-familymemberhistory-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-383" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/{id} - GET"
  display_name        = "/FamilyMemberHistory/{id} - GET"
  method              = "GET"
  operation_id        = "get-familymemberhistory-id"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "FamilyMemberHistory-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-384" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/{id}/_history - GET"
  display_name        = "/FamilyMemberHistory/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-familymemberhistory-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "FamilyMemberHistory-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-385" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/{id}/_history/{vid} - GET"
  display_name        = "/FamilyMemberHistory/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-familymemberhistory-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "FamilyMemberHistory-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "FamilyMemberHistory-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-386" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag - GET"
  display_name        = "/Flag - GET"
  method              = "GET"
  operation_id        = "get-flag"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-387" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/_history - GET"
  display_name        = "/Flag/_history - GET"
  method              = "GET"
  operation_id        = "get-flag-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-388" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/{id} - GET"
  display_name        = "/Flag/{id} - GET"
  method              = "GET"
  operation_id        = "get-flag-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Flag-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-389" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/{id}/_history - GET"
  display_name        = "/Flag/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-flag-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Flag-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-390" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/{id}/_history/{vid} - GET"
  display_name        = "/Flag/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-flag-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Flag-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Flag-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-391" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal - GET"
  display_name        = "/Goal - GET"
  method              = "GET"
  operation_id        = "get-goal"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-392" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/_history - GET"
  display_name        = "/Goal/_history - GET"
  method              = "GET"
  operation_id        = "get-goal-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-393" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/{id} - GET"
  display_name        = "/Goal/{id} - GET"
  method              = "GET"
  operation_id        = "get-goal-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Goal-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-394" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/{id}/_history - GET"
  display_name        = "/Goal/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-goal-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Goal-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-395" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/{id}/_history/{vid} - GET"
  display_name        = "/Goal/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-goal-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Goal-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Goal-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-396" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition - GET"
  display_name        = "/GraphDefinition - GET"
  method              = "GET"
  operation_id        = "get-graphdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-397" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/_history - GET"
  display_name        = "/GraphDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-graphdefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-398" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/{id} - GET"
  display_name        = "/GraphDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-graphdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GraphDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-399" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/{id}/_history - GET"
  display_name        = "/GraphDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-graphdefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GraphDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-400" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/{id}/_history/{vid} - GET"
  display_name        = "/GraphDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-graphdefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GraphDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GraphDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-401" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group - GET"
  display_name        = "/Group - GET"
  method              = "GET"
  operation_id        = "get-group"
  resource_group_name = var.resource_group_name
  url_template        = "/Group"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-402" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/_history - GET"
  display_name        = "/Group/_history - GET"
  method              = "GET"
  operation_id        = "get-group-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-403" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/{id} - GET"
  display_name        = "/Group/{id} - GET"
  method              = "GET"
  operation_id        = "get-group-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Group-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-404" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/{id}/_history - GET"
  display_name        = "/Group/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-group-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Group-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-405" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/{id}/_history/{vid} - GET"
  display_name        = "/Group/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-group-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Group-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Group-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-406" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse - GET"
  display_name        = "/GuidanceResponse - GET"
  method              = "GET"
  operation_id        = "get-guidanceresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-407" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/_history - GET"
  display_name        = "/GuidanceResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-guidanceresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-408" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/{id} - GET"
  display_name        = "/GuidanceResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-guidanceresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GuidanceResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-409" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/{id}/_history - GET"
  display_name        = "/GuidanceResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-guidanceresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GuidanceResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-410" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/{id}/_history/{vid} - GET"
  display_name        = "/GuidanceResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-guidanceresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GuidanceResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "GuidanceResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-411" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService - GET"
  display_name        = "/HealthcareService - GET"
  method              = "GET"
  operation_id        = "get-healthcareservice"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-412" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/_history - GET"
  display_name        = "/HealthcareService/_history - GET"
  method              = "GET"
  operation_id        = "get-healthcareservice-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-413" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/{id} - GET"
  display_name        = "/HealthcareService/{id} - GET"
  method              = "GET"
  operation_id        = "get-healthcareservice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "HealthcareService-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-414" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/{id}/_history - GET"
  display_name        = "/HealthcareService/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-healthcareservice-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "HealthcareService-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-415" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/{id}/_history/{vid} - GET"
  display_name        = "/HealthcareService/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-healthcareservice-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "HealthcareService-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "HealthcareService-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-416" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest - GET"
  display_name        = "/ImagingManifest - GET"
  method              = "GET"
  operation_id        = "get-imagingmanifest"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-417" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/_history - GET"
  display_name        = "/ImagingManifest/_history - GET"
  method              = "GET"
  operation_id        = "get-imagingmanifest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-418" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/{id} - GET"
  display_name        = "/ImagingManifest/{id} - GET"
  method              = "GET"
  operation_id        = "get-imagingmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingManifest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-419" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/{id}/_history - GET"
  display_name        = "/ImagingManifest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-imagingmanifest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingManifest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-420" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/{id}/_history/{vid} - GET"
  display_name        = "/ImagingManifest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-imagingmanifest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingManifest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingManifest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-421" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy - GET"
  display_name        = "/ImagingStudy - GET"
  method              = "GET"
  operation_id        = "get-imagingstudy"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-422" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/_history - GET"
  display_name        = "/ImagingStudy/_history - GET"
  method              = "GET"
  operation_id        = "get-imagingstudy-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-423" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/{id} - GET"
  display_name        = "/ImagingStudy/{id} - GET"
  method              = "GET"
  operation_id        = "get-imagingstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingStudy-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-424" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/{id}/_history - GET"
  display_name        = "/ImagingStudy/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-imagingstudy-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingStudy-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-425" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/{id}/_history/{vid} - GET"
  display_name        = "/ImagingStudy/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-imagingstudy-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingStudy-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImagingStudy-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-426" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization - GET"
  display_name        = "/Immunization - GET"
  method              = "GET"
  operation_id        = "get-immunization"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-427" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/_history - GET"
  display_name        = "/Immunization/_history - GET"
  method              = "GET"
  operation_id        = "get-immunization-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-428" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/{id} - GET"
  display_name        = "/Immunization/{id} - GET"
  method              = "GET"
  operation_id        = "get-immunization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Immunization-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-429" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/{id}/_history - GET"
  display_name        = "/Immunization/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-immunization-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Immunization-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-430" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/{id}/_history/{vid} - GET"
  display_name        = "/Immunization/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-immunization-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Immunization-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Immunization-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-431" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation - GET"
  display_name        = "/ImmunizationRecommendation - GET"
  method              = "GET"
  operation_id        = "get-immunizationrecommendation"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-432" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/_history - GET"
  display_name        = "/ImmunizationRecommendation/_history - GET"
  method              = "GET"
  operation_id        = "get-immunizationrecommendation-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-433" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/{id} - GET"
  display_name        = "/ImmunizationRecommendation/{id} - GET"
  method              = "GET"
  operation_id        = "get-immunizationrecommendation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImmunizationRecommendation-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-434" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/{id}/_history - GET"
  display_name        = "/ImmunizationRecommendation/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-immunizationrecommendation-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImmunizationRecommendation-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-435" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/{id}/_history/{vid} - GET"
  display_name        = "/ImmunizationRecommendation/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-immunizationrecommendation-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImmunizationRecommendation-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImmunizationRecommendation-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-436" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide - GET"
  display_name        = "/ImplementationGuide - GET"
  method              = "GET"
  operation_id        = "get-implementationguide"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-437" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/_history - GET"
  display_name        = "/ImplementationGuide/_history - GET"
  method              = "GET"
  operation_id        = "get-implementationguide-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-438" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/{id} - GET"
  display_name        = "/ImplementationGuide/{id} - GET"
  method              = "GET"
  operation_id        = "get-implementationguide-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImplementationGuide-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-439" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/{id}/_history - GET"
  display_name        = "/ImplementationGuide/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-implementationguide-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImplementationGuide-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-440" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/{id}/_history/{vid} - GET"
  display_name        = "/ImplementationGuide/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-implementationguide-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImplementationGuide-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ImplementationGuide-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-441" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library - GET"
  display_name        = "/Library - GET"
  method              = "GET"
  operation_id        = "get-library"
  resource_group_name = var.resource_group_name
  url_template        = "/Library"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-442" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/_history - GET"
  display_name        = "/Library/_history - GET"
  method              = "GET"
  operation_id        = "get-library-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-443" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/{id} - GET"
  display_name        = "/Library/{id} - GET"
  method              = "GET"
  operation_id        = "get-library-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Library-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-444" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/{id}/_history - GET"
  display_name        = "/Library/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-library-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Library-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-445" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/{id}/_history/{vid} - GET"
  display_name        = "/Library/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-library-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Library-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Library-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-446" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage - GET"
  display_name        = "/Linkage - GET"
  method              = "GET"
  operation_id        = "get-linkage"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-447" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/_history - GET"
  display_name        = "/Linkage/_history - GET"
  method              = "GET"
  operation_id        = "get-linkage-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-448" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/{id} - GET"
  display_name        = "/Linkage/{id} - GET"
  method              = "GET"
  operation_id        = "get-linkage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Linkage-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-449" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/{id}/_history - GET"
  display_name        = "/Linkage/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-linkage-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Linkage-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-450" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/{id}/_history/{vid} - GET"
  display_name        = "/Linkage/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-linkage-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Linkage-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Linkage-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-451" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List - GET"
  display_name        = "/List - GET"
  method              = "GET"
  operation_id        = "get-list"
  resource_group_name = var.resource_group_name
  url_template        = "/List"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-452" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/_history - GET"
  display_name        = "/List/_history - GET"
  method              = "GET"
  operation_id        = "get-list-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/List/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-453" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/{id} - GET"
  display_name        = "/List/{id} - GET"
  method              = "GET"
  operation_id        = "get-list-id"
  resource_group_name = var.resource_group_name
  url_template        = "/List/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "List-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-454" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/{id}/_history - GET"
  display_name        = "/List/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-list-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/List/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "List-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-455" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/{id}/_history/{vid} - GET"
  display_name        = "/List/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-list-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/List/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "List-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "List-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-456" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location - GET"
  display_name        = "/Location - GET"
  method              = "GET"
  operation_id        = "get-location"
  resource_group_name = var.resource_group_name
  url_template        = "/Location"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-457" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/_history - GET"
  display_name        = "/Location/_history - GET"
  method              = "GET"
  operation_id        = "get-location-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-458" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/{id} - GET"
  display_name        = "/Location/{id} - GET"
  method              = "GET"
  operation_id        = "get-location-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Location-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-459" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/{id}/_history - GET"
  display_name        = "/Location/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-location-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Location-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-460" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/{id}/_history/{vid} - GET"
  display_name        = "/Location/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-location-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Location-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Location-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-461" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure - GET"
  display_name        = "/Measure - GET"
  method              = "GET"
  operation_id        = "get-measure"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-462" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/_history - GET"
  display_name        = "/Measure/_history - GET"
  method              = "GET"
  operation_id        = "get-measure-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-463" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/{id} - GET"
  display_name        = "/Measure/{id} - GET"
  method              = "GET"
  operation_id        = "get-measure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Measure-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-464" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/{id}/_history - GET"
  display_name        = "/Measure/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-measure-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Measure-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-465" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/{id}/_history/{vid} - GET"
  display_name        = "/Measure/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-measure-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Measure-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Measure-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-466" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport - GET"
  display_name        = "/MeasureReport - GET"
  method              = "GET"
  operation_id        = "get-measurereport"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-467" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/_history - GET"
  display_name        = "/MeasureReport/_history - GET"
  method              = "GET"
  operation_id        = "get-measurereport-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-468" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/{id} - GET"
  display_name        = "/MeasureReport/{id} - GET"
  method              = "GET"
  operation_id        = "get-measurereport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MeasureReport-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-469" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/{id}/_history - GET"
  display_name        = "/MeasureReport/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-measurereport-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MeasureReport-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-470" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/{id}/_history/{vid} - GET"
  display_name        = "/MeasureReport/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-measurereport-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MeasureReport-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MeasureReport-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-471" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media - GET"
  display_name        = "/Media - GET"
  method              = "GET"
  operation_id        = "get-media"
  resource_group_name = var.resource_group_name
  url_template        = "/Media"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-472" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/_history - GET"
  display_name        = "/Media/_history - GET"
  method              = "GET"
  operation_id        = "get-media-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-473" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/{id} - GET"
  display_name        = "/Media/{id} - GET"
  method              = "GET"
  operation_id        = "get-media-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Media-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-474" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/{id}/_history - GET"
  display_name        = "/Media/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-media-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Media-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-475" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/{id}/_history/{vid} - GET"
  display_name        = "/Media/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-media-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Media-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Media-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-476" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication - GET"
  display_name        = "/Medication - GET"
  method              = "GET"
  operation_id        = "get-medication"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-477" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/_history - GET"
  display_name        = "/Medication/_history - GET"
  method              = "GET"
  operation_id        = "get-medication-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-478" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/{id} - GET"
  display_name        = "/Medication/{id} - GET"
  method              = "GET"
  operation_id        = "get-medication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Medication-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-479" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/{id}/_history - GET"
  display_name        = "/Medication/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-medication-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Medication-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-480" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/{id}/_history/{vid} - GET"
  display_name        = "/Medication/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-medication-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Medication-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Medication-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-481" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration - GET"
  display_name        = "/MedicationAdministration - GET"
  method              = "GET"
  operation_id        = "get-medicationadministration"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-482" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/_history - GET"
  display_name        = "/MedicationAdministration/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationadministration-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-483" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/{id} - GET"
  display_name        = "/MedicationAdministration/{id} - GET"
  method              = "GET"
  operation_id        = "get-medicationadministration-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationAdministration-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-484" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/{id}/_history - GET"
  display_name        = "/MedicationAdministration/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationadministration-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationAdministration-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-485" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/{id}/_history/{vid} - GET"
  display_name        = "/MedicationAdministration/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-medicationadministration-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationAdministration-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationAdministration-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-486" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense - GET"
  display_name        = "/MedicationDispense - GET"
  method              = "GET"
  operation_id        = "get-medicationdispense"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-487" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/_history - GET"
  display_name        = "/MedicationDispense/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationdispense-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-488" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/{id} - GET"
  display_name        = "/MedicationDispense/{id} - GET"
  method              = "GET"
  operation_id        = "get-medicationdispense-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationDispense-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-489" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/{id}/_history - GET"
  display_name        = "/MedicationDispense/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationdispense-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationDispense-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-490" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/{id}/_history/{vid} - GET"
  display_name        = "/MedicationDispense/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-medicationdispense-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationDispense-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationDispense-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-491" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest - GET"
  display_name        = "/MedicationRequest - GET"
  method              = "GET"
  operation_id        = "get-medicationrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-492" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/_history - GET"
  display_name        = "/MedicationRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-493" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/{id} - GET"
  display_name        = "/MedicationRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-medicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-494" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/{id}/_history - GET"
  display_name        = "/MedicationRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-495" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/{id}/_history/{vid} - GET"
  display_name        = "/MedicationRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-medicationrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-496" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement - GET"
  display_name        = "/MedicationStatement - GET"
  method              = "GET"
  operation_id        = "get-medicationstatement"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-497" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/_history - GET"
  display_name        = "/MedicationStatement/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationstatement-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-498" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/{id} - GET"
  display_name        = "/MedicationStatement/{id} - GET"
  method              = "GET"
  operation_id        = "get-medicationstatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationStatement-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-499" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/{id}/_history - GET"
  display_name        = "/MedicationStatement/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-medicationstatement-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationStatement-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-500" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/{id}/_history/{vid} - GET"
  display_name        = "/MedicationStatement/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-medicationstatement-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationStatement-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MedicationStatement-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-501" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition - GET"
  display_name        = "/MessageDefinition - GET"
  method              = "GET"
  operation_id        = "get-messagedefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-502" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/_history - GET"
  display_name        = "/MessageDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-messagedefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-503" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/{id} - GET"
  display_name        = "/MessageDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-messagedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-504" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/{id}/_history - GET"
  display_name        = "/MessageDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-messagedefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-505" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/{id}/_history/{vid} - GET"
  display_name        = "/MessageDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-messagedefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-506" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader - GET"
  display_name        = "/MessageHeader - GET"
  method              = "GET"
  operation_id        = "get-messageheader"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-507" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/_history - GET"
  display_name        = "/MessageHeader/_history - GET"
  method              = "GET"
  operation_id        = "get-messageheader-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-508" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/{id} - GET"
  display_name        = "/MessageHeader/{id} - GET"
  method              = "GET"
  operation_id        = "get-messageheader-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageHeader-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-509" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/{id}/_history - GET"
  display_name        = "/MessageHeader/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-messageheader-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageHeader-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-510" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/{id}/_history/{vid} - GET"
  display_name        = "/MessageHeader/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-messageheader-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageHeader-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "MessageHeader-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-511" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "Get conformance statement."
  display_name        = "Get conformance statement."
  method              = "GET"
  operation_id        = "get-metadata"
  resource_group_name = var.resource_group_name
  url_template        = "/metadata"
  response {
    description = "Success"
    status_code = 200
    representation {
      content_type = "application/json"
    }
    representation {
      content_type = "application/xml"
    }
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-512" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem - GET"
  display_name        = "/NamingSystem - GET"
  method              = "GET"
  operation_id        = "get-namingsystem"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-513" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/_history - GET"
  display_name        = "/NamingSystem/_history - GET"
  method              = "GET"
  operation_id        = "get-namingsystem-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-514" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/{id} - GET"
  display_name        = "/NamingSystem/{id} - GET"
  method              = "GET"
  operation_id        = "get-namingsystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NamingSystem-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-515" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/{id}/_history - GET"
  display_name        = "/NamingSystem/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-namingsystem-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NamingSystem-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-516" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/{id}/_history/{vid} - GET"
  display_name        = "/NamingSystem/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-namingsystem-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NamingSystem-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NamingSystem-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-517" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder - GET"
  display_name        = "/NutritionOrder - GET"
  method              = "GET"
  operation_id        = "get-nutritionorder"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-518" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/_history - GET"
  display_name        = "/NutritionOrder/_history - GET"
  method              = "GET"
  operation_id        = "get-nutritionorder-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-519" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/{id} - GET"
  display_name        = "/NutritionOrder/{id} - GET"
  method              = "GET"
  operation_id        = "get-nutritionorder-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NutritionOrder-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-520" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/{id}/_history - GET"
  display_name        = "/NutritionOrder/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-nutritionorder-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NutritionOrder-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-521" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/{id}/_history/{vid} - GET"
  display_name        = "/NutritionOrder/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-nutritionorder-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NutritionOrder-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "NutritionOrder-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-522" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation - GET"
  display_name        = "/Observation - GET"
  method              = "GET"
  operation_id        = "get-observation"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-523" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/_history - GET"
  display_name        = "/Observation/_history - GET"
  method              = "GET"
  operation_id        = "get-observation-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-524" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/{id} - GET"
  display_name        = "/Observation/{id} - GET"
  method              = "GET"
  operation_id        = "get-observation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Observation-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-525" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/{id}/_history - GET"
  display_name        = "/Observation/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-observation-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Observation-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-526" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/{id}/_history/{vid} - GET"
  display_name        = "/Observation/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-observation-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Observation-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Observation-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-527" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition - GET"
  display_name        = "/OperationDefinition - GET"
  method              = "GET"
  operation_id        = "get-operationdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-528" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/_history - GET"
  display_name        = "/OperationDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-operationdefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-529" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/{id} - GET"
  display_name        = "/OperationDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-operationdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-530" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/{id}/_history - GET"
  display_name        = "/OperationDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-operationdefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-531" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/{id}/_history/{vid} - GET"
  display_name        = "/OperationDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-operationdefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-532" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome - GET"
  display_name        = "/OperationOutcome - GET"
  method              = "GET"
  operation_id        = "get-operationoutcome"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-533" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/_history - GET"
  display_name        = "/OperationOutcome/_history - GET"
  method              = "GET"
  operation_id        = "get-operationoutcome-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-534" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/{id} - GET"
  display_name        = "/OperationOutcome/{id} - GET"
  method              = "GET"
  operation_id        = "get-operationoutcome-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationOutcome-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-535" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/{id}/_history - GET"
  display_name        = "/OperationOutcome/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-operationoutcome-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationOutcome-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-536" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/{id}/_history/{vid} - GET"
  display_name        = "/OperationOutcome/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-operationoutcome-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationOutcome-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "OperationOutcome-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-537" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization - GET"
  display_name        = "/Organization - GET"
  method              = "GET"
  operation_id        = "get-organization"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-538" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/_history - GET"
  display_name        = "/Organization/_history - GET"
  method              = "GET"
  operation_id        = "get-organization-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-539" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/{id} - GET"
  display_name        = "/Organization/{id} - GET"
  method              = "GET"
  operation_id        = "get-organization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Organization-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-540" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/{id}/_history - GET"
  display_name        = "/Organization/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-organization-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Organization-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-541" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/{id}/_history/{vid} - GET"
  display_name        = "/Organization/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-organization-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Organization-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Organization-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-542" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters - GET"
  display_name        = "/Parameters - GET"
  method              = "GET"
  operation_id        = "get-parameters"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-543" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/_history - GET"
  display_name        = "/Parameters/_history - GET"
  method              = "GET"
  operation_id        = "get-parameters-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-544" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/{id} - GET"
  display_name        = "/Parameters/{id} - GET"
  method              = "GET"
  operation_id        = "get-parameters-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Parameters-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-545" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/{id}/_history - GET"
  display_name        = "/Parameters/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-parameters-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Parameters-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-546" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/{id}/_history/{vid} - GET"
  display_name        = "/Parameters/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-parameters-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Parameters-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Parameters-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-547" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient - GET"
  display_name        = "/Patient - GET"
  method              = "GET"
  operation_id        = "get-patient"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-548" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/_history - GET"
  display_name        = "/Patient/_history - GET"
  method              = "GET"
  operation_id        = "get-patient-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-549" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id} - GET"
  display_name        = "/Patient/{id} - GET"
  method              = "GET"
  operation_id        = "get-patient-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Patient-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-550" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id}/_history - GET"
  display_name        = "/Patient/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-patient-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Patient-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-551" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id}/_history/{vid} - GET"
  display_name        = "/Patient/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-patient-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Patient-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Patient-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-552" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice - GET"
  display_name        = "/PaymentNotice - GET"
  method              = "GET"
  operation_id        = "get-paymentnotice"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-553" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/_history - GET"
  display_name        = "/PaymentNotice/_history - GET"
  method              = "GET"
  operation_id        = "get-paymentnotice-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-554" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/{id} - GET"
  display_name        = "/PaymentNotice/{id} - GET"
  method              = "GET"
  operation_id        = "get-paymentnotice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentNotice-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-555" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/{id}/_history - GET"
  display_name        = "/PaymentNotice/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-paymentnotice-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentNotice-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-556" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/{id}/_history/{vid} - GET"
  display_name        = "/PaymentNotice/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-paymentnotice-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentNotice-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentNotice-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-557" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation - GET"
  display_name        = "/PaymentReconciliation - GET"
  method              = "GET"
  operation_id        = "get-paymentreconciliation"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-558" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/_history - GET"
  display_name        = "/PaymentReconciliation/_history - GET"
  method              = "GET"
  operation_id        = "get-paymentreconciliation-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-559" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/{id} - GET"
  display_name        = "/PaymentReconciliation/{id} - GET"
  method              = "GET"
  operation_id        = "get-paymentreconciliation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentReconciliation-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-560" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/{id}/_history - GET"
  display_name        = "/PaymentReconciliation/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-paymentreconciliation-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentReconciliation-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-561" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/{id}/_history/{vid} - GET"
  display_name        = "/PaymentReconciliation/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-paymentreconciliation-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentReconciliation-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PaymentReconciliation-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-562" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person - GET"
  display_name        = "/Person - GET"
  method              = "GET"
  operation_id        = "get-person"
  resource_group_name = var.resource_group_name
  url_template        = "/Person"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-563" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/_history - GET"
  display_name        = "/Person/_history - GET"
  method              = "GET"
  operation_id        = "get-person-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-564" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/{id} - GET"
  display_name        = "/Person/{id} - GET"
  method              = "GET"
  operation_id        = "get-person-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Person-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-565" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/{id}/_history - GET"
  display_name        = "/Person/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-person-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Person-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-566" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/{id}/_history/{vid} - GET"
  display_name        = "/Person/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-person-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Person-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Person-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-567" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition - GET"
  display_name        = "/PlanDefinition - GET"
  method              = "GET"
  operation_id        = "get-plandefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-568" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/_history - GET"
  display_name        = "/PlanDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-plandefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-569" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/{id} - GET"
  display_name        = "/PlanDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-plandefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PlanDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-570" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/{id}/_history - GET"
  display_name        = "/PlanDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-plandefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PlanDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-571" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/{id}/_history/{vid} - GET"
  display_name        = "/PlanDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-plandefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PlanDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PlanDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-572" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner - GET"
  display_name        = "/Practitioner - GET"
  method              = "GET"
  operation_id        = "get-practitioner"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-573" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/_history - GET"
  display_name        = "/Practitioner/_history - GET"
  method              = "GET"
  operation_id        = "get-practitioner-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-574" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/{id} - GET"
  display_name        = "/Practitioner/{id} - GET"
  method              = "GET"
  operation_id        = "get-practitioner-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Practitioner-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-575" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/{id}/_history - GET"
  display_name        = "/Practitioner/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-practitioner-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Practitioner-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-576" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/{id}/_history/{vid} - GET"
  display_name        = "/Practitioner/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-practitioner-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Practitioner-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Practitioner-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-577" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole - GET"
  display_name        = "/PractitionerRole - GET"
  method              = "GET"
  operation_id        = "get-practitionerrole"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-578" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/_history - GET"
  display_name        = "/PractitionerRole/_history - GET"
  method              = "GET"
  operation_id        = "get-practitionerrole-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-579" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/{id} - GET"
  display_name        = "/PractitionerRole/{id} - GET"
  method              = "GET"
  operation_id        = "get-practitionerrole-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PractitionerRole-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-580" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/{id}/_history - GET"
  display_name        = "/PractitionerRole/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-practitionerrole-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PractitionerRole-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-581" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/{id}/_history/{vid} - GET"
  display_name        = "/PractitionerRole/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-practitionerrole-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PractitionerRole-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "PractitionerRole-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-582" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure - GET"
  display_name        = "/Procedure - GET"
  method              = "GET"
  operation_id        = "get-procedure"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-583" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/_history - GET"
  display_name        = "/Procedure/_history - GET"
  method              = "GET"
  operation_id        = "get-procedure-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-584" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/{id} - GET"
  display_name        = "/Procedure/{id} - GET"
  method              = "GET"
  operation_id        = "get-procedure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Procedure-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-585" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/{id}/_history - GET"
  display_name        = "/Procedure/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-procedure-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Procedure-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-586" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/{id}/_history/{vid} - GET"
  display_name        = "/Procedure/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-procedure-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Procedure-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Procedure-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-587" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest - GET"
  display_name        = "/ProcedureRequest - GET"
  method              = "GET"
  operation_id        = "get-procedurerequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-588" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/_history - GET"
  display_name        = "/ProcedureRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-procedurerequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-589" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/{id} - GET"
  display_name        = "/ProcedureRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-procedurerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcedureRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-590" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/{id}/_history - GET"
  display_name        = "/ProcedureRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-procedurerequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcedureRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-591" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/{id}/_history/{vid} - GET"
  display_name        = "/ProcedureRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-procedurerequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcedureRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcedureRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-592" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest - GET"
  display_name        = "/ProcessRequest - GET"
  method              = "GET"
  operation_id        = "get-processrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-593" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/_history - GET"
  display_name        = "/ProcessRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-processrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-594" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/{id} - GET"
  display_name        = "/ProcessRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-processrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-595" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/{id}/_history - GET"
  display_name        = "/ProcessRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-processrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-596" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/{id}/_history/{vid} - GET"
  display_name        = "/ProcessRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-processrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-597" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse - GET"
  display_name        = "/ProcessResponse - GET"
  method              = "GET"
  operation_id        = "get-processresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-598" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/_history - GET"
  display_name        = "/ProcessResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-processresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-599" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/{id} - GET"
  display_name        = "/ProcessResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-processresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-600" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/{id}/_history - GET"
  display_name        = "/ProcessResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-processresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-601" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/{id}/_history/{vid} - GET"
  display_name        = "/ProcessResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-processresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ProcessResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-602" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance - GET"
  display_name        = "/Provenance - GET"
  method              = "GET"
  operation_id        = "get-provenance"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-603" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/_history - GET"
  display_name        = "/Provenance/_history - GET"
  method              = "GET"
  operation_id        = "get-provenance-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-604" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/{id} - GET"
  display_name        = "/Provenance/{id} - GET"
  method              = "GET"
  operation_id        = "get-provenance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Provenance-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-605" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/{id}/_history - GET"
  display_name        = "/Provenance/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-provenance-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Provenance-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-606" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/{id}/_history/{vid} - GET"
  display_name        = "/Provenance/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-provenance-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Provenance-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Provenance-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-607" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire - GET"
  display_name        = "/Questionnaire - GET"
  method              = "GET"
  operation_id        = "get-questionnaire"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-608" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/_history - GET"
  display_name        = "/Questionnaire/_history - GET"
  method              = "GET"
  operation_id        = "get-questionnaire-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-609" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/{id} - GET"
  display_name        = "/Questionnaire/{id} - GET"
  method              = "GET"
  operation_id        = "get-questionnaire-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Questionnaire-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-610" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/{id}/_history - GET"
  display_name        = "/Questionnaire/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-questionnaire-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Questionnaire-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-611" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/{id}/_history/{vid} - GET"
  display_name        = "/Questionnaire/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-questionnaire-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Questionnaire-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Questionnaire-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-612" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse - GET"
  display_name        = "/QuestionnaireResponse - GET"
  method              = "GET"
  operation_id        = "get-questionnaireresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-613" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/_history - GET"
  display_name        = "/QuestionnaireResponse/_history - GET"
  method              = "GET"
  operation_id        = "get-questionnaireresponse-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-614" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/{id} - GET"
  display_name        = "/QuestionnaireResponse/{id} - GET"
  method              = "GET"
  operation_id        = "get-questionnaireresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "QuestionnaireResponse-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-615" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/{id}/_history - GET"
  display_name        = "/QuestionnaireResponse/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-questionnaireresponse-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "QuestionnaireResponse-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-616" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/{id}/_history/{vid} - GET"
  display_name        = "/QuestionnaireResponse/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-questionnaireresponse-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "QuestionnaireResponse-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "QuestionnaireResponse-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-617" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest - GET"
  display_name        = "/ReferralRequest - GET"
  method              = "GET"
  operation_id        = "get-referralrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-618" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/_history - GET"
  display_name        = "/ReferralRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-referralrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-619" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/{id} - GET"
  display_name        = "/ReferralRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-referralrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ReferralRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-620" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/{id}/_history - GET"
  display_name        = "/ReferralRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-referralrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ReferralRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-621" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/{id}/_history/{vid} - GET"
  display_name        = "/ReferralRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-referralrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ReferralRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ReferralRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-622" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson - GET"
  display_name        = "/RelatedPerson - GET"
  method              = "GET"
  operation_id        = "get-relatedperson"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-623" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/_history - GET"
  display_name        = "/RelatedPerson/_history - GET"
  method              = "GET"
  operation_id        = "get-relatedperson-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-624" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/{id} - GET"
  display_name        = "/RelatedPerson/{id} - GET"
  method              = "GET"
  operation_id        = "get-relatedperson-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RelatedPerson-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-625" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/{id}/_history - GET"
  display_name        = "/RelatedPerson/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-relatedperson-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RelatedPerson-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-626" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/{id}/_history/{vid} - GET"
  display_name        = "/RelatedPerson/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-relatedperson-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RelatedPerson-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RelatedPerson-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-627" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup - GET"
  display_name        = "/RequestGroup - GET"
  method              = "GET"
  operation_id        = "get-requestgroup"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-628" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/_history - GET"
  display_name        = "/RequestGroup/_history - GET"
  method              = "GET"
  operation_id        = "get-requestgroup-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-629" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/{id} - GET"
  display_name        = "/RequestGroup/{id} - GET"
  method              = "GET"
  operation_id        = "get-requestgroup-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RequestGroup-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-630" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/{id}/_history - GET"
  display_name        = "/RequestGroup/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-requestgroup-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RequestGroup-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-631" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/{id}/_history/{vid} - GET"
  display_name        = "/RequestGroup/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-requestgroup-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RequestGroup-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RequestGroup-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-632" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy - GET"
  display_name        = "/ResearchStudy - GET"
  method              = "GET"
  operation_id        = "get-researchstudy"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-633" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/_history - GET"
  display_name        = "/ResearchStudy/_history - GET"
  method              = "GET"
  operation_id        = "get-researchstudy-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-634" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/{id} - GET"
  display_name        = "/ResearchStudy/{id} - GET"
  method              = "GET"
  operation_id        = "get-researchstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchStudy-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-635" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/{id}/_history - GET"
  display_name        = "/ResearchStudy/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-researchstudy-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchStudy-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-636" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/{id}/_history/{vid} - GET"
  display_name        = "/ResearchStudy/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-researchstudy-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchStudy-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchStudy-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-637" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject - GET"
  display_name        = "/ResearchSubject - GET"
  method              = "GET"
  operation_id        = "get-researchsubject"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-638" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/_history - GET"
  display_name        = "/ResearchSubject/_history - GET"
  method              = "GET"
  operation_id        = "get-researchsubject-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-639" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/{id} - GET"
  display_name        = "/ResearchSubject/{id} - GET"
  method              = "GET"
  operation_id        = "get-researchsubject-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchSubject-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-640" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/{id}/_history - GET"
  display_name        = "/ResearchSubject/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-researchsubject-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchSubject-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-641" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/{id}/_history/{vid} - GET"
  display_name        = "/ResearchSubject/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-researchsubject-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchSubject-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ResearchSubject-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-642" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment - GET"
  display_name        = "/RiskAssessment - GET"
  method              = "GET"
  operation_id        = "get-riskassessment"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-643" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/_history - GET"
  display_name        = "/RiskAssessment/_history - GET"
  method              = "GET"
  operation_id        = "get-riskassessment-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-644" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/{id} - GET"
  display_name        = "/RiskAssessment/{id} - GET"
  method              = "GET"
  operation_id        = "get-riskassessment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RiskAssessment-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-645" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/{id}/_history - GET"
  display_name        = "/RiskAssessment/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-riskassessment-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RiskAssessment-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-646" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/{id}/_history/{vid} - GET"
  display_name        = "/RiskAssessment/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-riskassessment-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RiskAssessment-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "RiskAssessment-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-647" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule - GET"
  display_name        = "/Schedule - GET"
  method              = "GET"
  operation_id        = "get-schedule"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-648" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/_history - GET"
  display_name        = "/Schedule/_history - GET"
  method              = "GET"
  operation_id        = "get-schedule-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-649" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/{id} - GET"
  display_name        = "/Schedule/{id} - GET"
  method              = "GET"
  operation_id        = "get-schedule-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Schedule-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-650" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/{id}/_history - GET"
  display_name        = "/Schedule/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-schedule-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Schedule-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-651" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/{id}/_history/{vid} - GET"
  display_name        = "/Schedule/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-schedule-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Schedule-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Schedule-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-652" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter - GET"
  display_name        = "/SearchParameter - GET"
  method              = "GET"
  operation_id        = "get-searchparameter"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-653" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/_history - GET"
  display_name        = "/SearchParameter/_history - GET"
  method              = "GET"
  operation_id        = "get-searchparameter-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-654" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/{id} - GET"
  display_name        = "/SearchParameter/{id} - GET"
  method              = "GET"
  operation_id        = "get-searchparameter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SearchParameter-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-655" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/{id}/_history - GET"
  display_name        = "/SearchParameter/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-searchparameter-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SearchParameter-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-656" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/{id}/_history/{vid} - GET"
  display_name        = "/SearchParameter/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-searchparameter-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SearchParameter-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SearchParameter-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-657" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence - GET"
  display_name        = "/Sequence - GET"
  method              = "GET"
  operation_id        = "get-sequence"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-658" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/_history - GET"
  display_name        = "/Sequence/_history - GET"
  method              = "GET"
  operation_id        = "get-sequence-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-659" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/{id} - GET"
  display_name        = "/Sequence/{id} - GET"
  method              = "GET"
  operation_id        = "get-sequence-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Sequence-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-660" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/{id}/_history - GET"
  display_name        = "/Sequence/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-sequence-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Sequence-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-661" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/{id}/_history/{vid} - GET"
  display_name        = "/Sequence/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-sequence-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Sequence-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Sequence-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-662" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition - GET"
  display_name        = "/ServiceDefinition - GET"
  method              = "GET"
  operation_id        = "get-servicedefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-663" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/_history - GET"
  display_name        = "/ServiceDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-servicedefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-664" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/{id} - GET"
  display_name        = "/ServiceDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-servicedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ServiceDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-665" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/{id}/_history - GET"
  display_name        = "/ServiceDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-servicedefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ServiceDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-666" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/{id}/_history/{vid} - GET"
  display_name        = "/ServiceDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-servicedefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ServiceDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ServiceDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-667" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot - GET"
  display_name        = "/Slot - GET"
  method              = "GET"
  operation_id        = "get-slot"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-668" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/_history - GET"
  display_name        = "/Slot/_history - GET"
  method              = "GET"
  operation_id        = "get-slot-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-669" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/{id} - GET"
  display_name        = "/Slot/{id} - GET"
  method              = "GET"
  operation_id        = "get-slot-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Slot-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-670" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/{id}/_history - GET"
  display_name        = "/Slot/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-slot-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Slot-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-671" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/{id}/_history/{vid} - GET"
  display_name        = "/Slot/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-slot-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Slot-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Slot-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-672" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen - GET"
  display_name        = "/Specimen - GET"
  method              = "GET"
  operation_id        = "get-specimen"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-673" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/_history - GET"
  display_name        = "/Specimen/_history - GET"
  method              = "GET"
  operation_id        = "get-specimen-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-674" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/{id} - GET"
  display_name        = "/Specimen/{id} - GET"
  method              = "GET"
  operation_id        = "get-specimen-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Specimen-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-675" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/{id}/_history - GET"
  display_name        = "/Specimen/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-specimen-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Specimen-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-676" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/{id}/_history/{vid} - GET"
  display_name        = "/Specimen/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-specimen-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Specimen-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Specimen-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-677" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition - GET"
  display_name        = "/StructureDefinition - GET"
  method              = "GET"
  operation_id        = "get-structuredefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-678" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/_history - GET"
  display_name        = "/StructureDefinition/_history - GET"
  method              = "GET"
  operation_id        = "get-structuredefinition-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-679" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/{id} - GET"
  display_name        = "/StructureDefinition/{id} - GET"
  method              = "GET"
  operation_id        = "get-structuredefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureDefinition-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-680" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/{id}/_history - GET"
  display_name        = "/StructureDefinition/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-structuredefinition-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureDefinition-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-681" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/{id}/_history/{vid} - GET"
  display_name        = "/StructureDefinition/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-structuredefinition-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureDefinition-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureDefinition-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-682" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap - GET"
  display_name        = "/StructureMap - GET"
  method              = "GET"
  operation_id        = "get-structuremap"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-683" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/_history - GET"
  display_name        = "/StructureMap/_history - GET"
  method              = "GET"
  operation_id        = "get-structuremap-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-684" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/{id} - GET"
  display_name        = "/StructureMap/{id} - GET"
  method              = "GET"
  operation_id        = "get-structuremap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureMap-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-685" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/{id}/_history - GET"
  display_name        = "/StructureMap/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-structuremap-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureMap-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-686" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/{id}/_history/{vid} - GET"
  display_name        = "/StructureMap/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-structuremap-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureMap-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "StructureMap-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-687" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription - GET"
  display_name        = "/Subscription - GET"
  method              = "GET"
  operation_id        = "get-subscription"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-688" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/_history - GET"
  display_name        = "/Subscription/_history - GET"
  method              = "GET"
  operation_id        = "get-subscription-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-689" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/{id} - GET"
  display_name        = "/Subscription/{id} - GET"
  method              = "GET"
  operation_id        = "get-subscription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Subscription-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-690" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/{id}/_history - GET"
  display_name        = "/Subscription/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-subscription-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Subscription-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-691" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/{id}/_history/{vid} - GET"
  display_name        = "/Subscription/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-subscription-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Subscription-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Subscription-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-692" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance - GET"
  display_name        = "/Substance - GET"
  method              = "GET"
  operation_id        = "get-substance"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-693" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/_history - GET"
  display_name        = "/Substance/_history - GET"
  method              = "GET"
  operation_id        = "get-substance-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-694" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/{id} - GET"
  display_name        = "/Substance/{id} - GET"
  method              = "GET"
  operation_id        = "get-substance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Substance-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-695" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/{id}/_history - GET"
  display_name        = "/Substance/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-substance-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Substance-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-696" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/{id}/_history/{vid} - GET"
  display_name        = "/Substance/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-substance-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Substance-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Substance-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-697" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery - GET"
  display_name        = "/SupplyDelivery - GET"
  method              = "GET"
  operation_id        = "get-supplydelivery"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-698" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/_history - GET"
  display_name        = "/SupplyDelivery/_history - GET"
  method              = "GET"
  operation_id        = "get-supplydelivery-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-699" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/{id} - GET"
  display_name        = "/SupplyDelivery/{id} - GET"
  method              = "GET"
  operation_id        = "get-supplydelivery-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyDelivery-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-700" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/{id}/_history - GET"
  display_name        = "/SupplyDelivery/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-supplydelivery-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyDelivery-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-701" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/{id}/_history/{vid} - GET"
  display_name        = "/SupplyDelivery/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-supplydelivery-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyDelivery-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyDelivery-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-702" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest - GET"
  display_name        = "/SupplyRequest - GET"
  method              = "GET"
  operation_id        = "get-supplyrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-703" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/_history - GET"
  display_name        = "/SupplyRequest/_history - GET"
  method              = "GET"
  operation_id        = "get-supplyrequest-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-704" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/{id} - GET"
  display_name        = "/SupplyRequest/{id} - GET"
  method              = "GET"
  operation_id        = "get-supplyrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyRequest-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-705" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/{id}/_history - GET"
  display_name        = "/SupplyRequest/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-supplyrequest-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyRequest-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-706" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/{id}/_history/{vid} - GET"
  display_name        = "/SupplyRequest/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-supplyrequest-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyRequest-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "SupplyRequest-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-707" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task - GET"
  display_name        = "/Task - GET"
  method              = "GET"
  operation_id        = "get-task"
  resource_group_name = var.resource_group_name
  url_template        = "/Task"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-708" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/_history - GET"
  display_name        = "/Task/_history - GET"
  method              = "GET"
  operation_id        = "get-task-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-709" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/{id} - GET"
  display_name        = "/Task/{id} - GET"
  method              = "GET"
  operation_id        = "get-task-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Task-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-710" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/{id}/_history - GET"
  display_name        = "/Task/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-task-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Task-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-711" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/{id}/_history/{vid} - GET"
  display_name        = "/Task/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-task-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Task-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "Task-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-712" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport - GET"
  display_name        = "/TestReport - GET"
  method              = "GET"
  operation_id        = "get-testreport"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-713" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/_history - GET"
  display_name        = "/TestReport/_history - GET"
  method              = "GET"
  operation_id        = "get-testreport-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-714" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/{id} - GET"
  display_name        = "/TestReport/{id} - GET"
  method              = "GET"
  operation_id        = "get-testreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestReport-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-715" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/{id}/_history - GET"
  display_name        = "/TestReport/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-testreport-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestReport-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-716" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/{id}/_history/{vid} - GET"
  display_name        = "/TestReport/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-testreport-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestReport-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestReport-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-717" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript - GET"
  display_name        = "/TestScript - GET"
  method              = "GET"
  operation_id        = "get-testscript"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-718" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/_history - GET"
  display_name        = "/TestScript/_history - GET"
  method              = "GET"
  operation_id        = "get-testscript-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-719" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/{id} - GET"
  display_name        = "/TestScript/{id} - GET"
  method              = "GET"
  operation_id        = "get-testscript-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestScript-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-720" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/{id}/_history - GET"
  display_name        = "/TestScript/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-testscript-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestScript-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-721" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/{id}/_history/{vid} - GET"
  display_name        = "/TestScript/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-testscript-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestScript-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "TestScript-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-722" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet - GET"
  display_name        = "/ValueSet - GET"
  method              = "GET"
  operation_id        = "get-valueset"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-723" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/_history - GET"
  display_name        = "/ValueSet/_history - GET"
  method              = "GET"
  operation_id        = "get-valueset-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-724" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/{id} - GET"
  display_name        = "/ValueSet/{id} - GET"
  method              = "GET"
  operation_id        = "get-valueset-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ValueSet-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-725" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/{id}/_history - GET"
  display_name        = "/ValueSet/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-valueset-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ValueSet-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-726" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/{id}/_history/{vid} - GET"
  display_name        = "/ValueSet/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-valueset-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ValueSet-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "ValueSet-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-727" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription - GET"
  display_name        = "/VisionPrescription - GET"
  method              = "GET"
  operation_id        = "get-visionprescription"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-728" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/_history - GET"
  display_name        = "/VisionPrescription/_history - GET"
  method              = "GET"
  operation_id        = "get-visionprescription-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/_history"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-729" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/{id} - GET"
  display_name        = "/VisionPrescription/{id} - GET"
  method              = "GET"
  operation_id        = "get-visionprescription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "VisionPrescription-id-GetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-730" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/{id}/_history - GET"
  display_name        = "/VisionPrescription/{id}/_history - GET"
  method              = "GET"
  operation_id        = "get-visionprescription-id-_history"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/{id}/_history"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "VisionPrescription-id-_historyGetRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-731" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/{id}/_history/{vid} - GET"
  display_name        = "/VisionPrescription/{id}/_history/{vid} - GET"
  method              = "GET"
  operation_id        = "get-visionprescription-id-_history-vid"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/{id}/_history/{vid}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    description = "id of resource"
    name        = "id"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "VisionPrescription-id-_history-vid-GetRequest"
  }
  template_parameter {
    description = "version id of resource"
    name        = "vid"
    required    = true
    schema_id   = "649c729dc36d8f14f8b1683e"
    type        = "string"
    type_name   = "VisionPrescription-id-_history-vid-GetRequest-1"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-732" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account - POST"
  display_name        = "/Account - POST"
  method              = "POST"
  operation_id        = "post-account"
  resource_group_name = var.resource_group_name
  url_template        = "/Account"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-733" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition - POST"
  display_name        = "/ActivityDefinition - POST"
  method              = "POST"
  operation_id        = "post-activitydefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-734" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent - POST"
  display_name        = "/AdverseEvent - POST"
  method              = "POST"
  operation_id        = "post-adverseevent"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-735" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance - POST"
  display_name        = "/AllergyIntolerance - POST"
  method              = "POST"
  operation_id        = "post-allergyintolerance"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-736" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment - POST"
  display_name        = "/Appointment - POST"
  method              = "POST"
  operation_id        = "post-appointment"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-737" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse - POST"
  display_name        = "/AppointmentResponse - POST"
  method              = "POST"
  operation_id        = "post-appointmentresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-738" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent - POST"
  display_name        = "/AuditEvent - POST"
  method              = "POST"
  operation_id        = "post-auditevent"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-739" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic - POST"
  display_name        = "/Basic - POST"
  method              = "POST"
  operation_id        = "post-basic"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-740" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary - POST"
  display_name        = "/Binary - POST"
  method              = "POST"
  operation_id        = "post-binary"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-741" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite - POST"
  display_name        = "/BodySite - POST"
  method              = "POST"
  operation_id        = "post-bodysite"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-742" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle - POST"
  display_name        = "/Bundle - POST"
  method              = "POST"
  operation_id        = "post-bundle"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-743" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement - POST"
  display_name        = "/CapabilityStatement - POST"
  method              = "POST"
  operation_id        = "post-capabilitystatement"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-744" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan - POST"
  display_name        = "/CarePlan - POST"
  method              = "POST"
  operation_id        = "post-careplan"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-745" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam - POST"
  display_name        = "/CareTeam - POST"
  method              = "POST"
  operation_id        = "post-careteam"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-746" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem - POST"
  display_name        = "/ChargeItem - POST"
  method              = "POST"
  operation_id        = "post-chargeitem"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-747" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim - POST"
  display_name        = "/Claim - POST"
  method              = "POST"
  operation_id        = "post-claim"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-748" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse - POST"
  display_name        = "/ClaimResponse - POST"
  method              = "POST"
  operation_id        = "post-claimresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-749" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression - POST"
  display_name        = "/ClinicalImpression - POST"
  method              = "POST"
  operation_id        = "post-clinicalimpression"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-750" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem - POST"
  display_name        = "/CodeSystem - POST"
  method              = "POST"
  operation_id        = "post-codesystem"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-751" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication - POST"
  display_name        = "/Communication - POST"
  method              = "POST"
  operation_id        = "post-communication"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-752" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest - POST"
  display_name        = "/CommunicationRequest - POST"
  method              = "POST"
  operation_id        = "post-communicationrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-753" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition - POST"
  display_name        = "/CompartmentDefinition - POST"
  method              = "POST"
  operation_id        = "post-compartmentdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-754" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition - POST"
  display_name        = "/Composition - POST"
  method              = "POST"
  operation_id        = "post-composition"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-755" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap - POST"
  display_name        = "/ConceptMap - POST"
  method              = "POST"
  operation_id        = "post-conceptmap"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-756" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition - POST"
  display_name        = "/Condition - POST"
  method              = "POST"
  operation_id        = "post-condition"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-757" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent - POST"
  display_name        = "/Consent - POST"
  method              = "POST"
  operation_id        = "post-consent"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-758" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract - POST"
  display_name        = "/Contract - POST"
  method              = "POST"
  operation_id        = "post-contract"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-759" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage - POST"
  display_name        = "/Coverage - POST"
  method              = "POST"
  operation_id        = "post-coverage"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-760" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement - POST"
  display_name        = "/DataElement - POST"
  method              = "POST"
  operation_id        = "post-dataelement"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-761" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue - POST"
  display_name        = "/DetectedIssue - POST"
  method              = "POST"
  operation_id        = "post-detectedissue"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-762" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device - POST"
  display_name        = "/Device - POST"
  method              = "POST"
  operation_id        = "post-device"
  resource_group_name = var.resource_group_name
  url_template        = "/Device"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-763" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent - POST"
  display_name        = "/DeviceComponent - POST"
  method              = "POST"
  operation_id        = "post-devicecomponent"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-764" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric - POST"
  display_name        = "/DeviceMetric - POST"
  method              = "POST"
  operation_id        = "post-devicemetric"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-765" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest - POST"
  display_name        = "/DeviceRequest - POST"
  method              = "POST"
  operation_id        = "post-devicerequest"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-766" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement - POST"
  display_name        = "/DeviceUseStatement - POST"
  method              = "POST"
  operation_id        = "post-deviceusestatement"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-767" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport - POST"
  display_name        = "/DiagnosticReport - POST"
  method              = "POST"
  operation_id        = "post-diagnosticreport"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-768" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest - POST"
  display_name        = "/DocumentManifest - POST"
  method              = "POST"
  operation_id        = "post-documentmanifest"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-769" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference - POST"
  display_name        = "/DocumentReference - POST"
  method              = "POST"
  operation_id        = "post-documentreference"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-770" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest - POST"
  display_name        = "/EligibilityRequest - POST"
  method              = "POST"
  operation_id        = "post-eligibilityrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-771" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse - POST"
  display_name        = "/EligibilityResponse - POST"
  method              = "POST"
  operation_id        = "post-eligibilityresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-772" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter - POST"
  display_name        = "/Encounter - POST"
  method              = "POST"
  operation_id        = "post-encounter"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-773" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint - POST"
  display_name        = "/Endpoint - POST"
  method              = "POST"
  operation_id        = "post-endpoint"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-774" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest - POST"
  display_name        = "/EnrollmentRequest - POST"
  method              = "POST"
  operation_id        = "post-enrollmentrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-775" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse - POST"
  display_name        = "/EnrollmentResponse - POST"
  method              = "POST"
  operation_id        = "post-enrollmentresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-776" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare - POST"
  display_name        = "/EpisodeOfCare - POST"
  method              = "POST"
  operation_id        = "post-episodeofcare"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-777" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile - POST"
  display_name        = "/ExpansionProfile - POST"
  method              = "POST"
  operation_id        = "post-expansionprofile"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-778" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit - POST"
  display_name        = "/ExplanationOfBenefit - POST"
  method              = "POST"
  operation_id        = "post-explanationofbenefit"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-779" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory - POST"
  display_name        = "/FamilyMemberHistory - POST"
  method              = "POST"
  operation_id        = "post-familymemberhistory"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-780" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag - POST"
  display_name        = "/Flag - POST"
  method              = "POST"
  operation_id        = "post-flag"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-781" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal - POST"
  display_name        = "/Goal - POST"
  method              = "POST"
  operation_id        = "post-goal"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-782" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition - POST"
  display_name        = "/GraphDefinition - POST"
  method              = "POST"
  operation_id        = "post-graphdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-783" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group - POST"
  display_name        = "/Group - POST"
  method              = "POST"
  operation_id        = "post-group"
  resource_group_name = var.resource_group_name
  url_template        = "/Group"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-784" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse - POST"
  display_name        = "/GuidanceResponse - POST"
  method              = "POST"
  operation_id        = "post-guidanceresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-785" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService - POST"
  display_name        = "/HealthcareService - POST"
  method              = "POST"
  operation_id        = "post-healthcareservice"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-786" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest - POST"
  display_name        = "/ImagingManifest - POST"
  method              = "POST"
  operation_id        = "post-imagingmanifest"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-787" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy - POST"
  display_name        = "/ImagingStudy - POST"
  method              = "POST"
  operation_id        = "post-imagingstudy"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-788" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization - POST"
  display_name        = "/Immunization - POST"
  method              = "POST"
  operation_id        = "post-immunization"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-789" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation - POST"
  display_name        = "/ImmunizationRecommendation - POST"
  method              = "POST"
  operation_id        = "post-immunizationrecommendation"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-790" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide - POST"
  display_name        = "/ImplementationGuide - POST"
  method              = "POST"
  operation_id        = "post-implementationguide"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-791" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library - POST"
  display_name        = "/Library - POST"
  method              = "POST"
  operation_id        = "post-library"
  resource_group_name = var.resource_group_name
  url_template        = "/Library"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-792" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage - POST"
  display_name        = "/Linkage - POST"
  method              = "POST"
  operation_id        = "post-linkage"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-793" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List - POST"
  display_name        = "/List - POST"
  method              = "POST"
  operation_id        = "post-list"
  resource_group_name = var.resource_group_name
  url_template        = "/List"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-794" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location - POST"
  display_name        = "/Location - POST"
  method              = "POST"
  operation_id        = "post-location"
  resource_group_name = var.resource_group_name
  url_template        = "/Location"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-795" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure - POST"
  display_name        = "/Measure - POST"
  method              = "POST"
  operation_id        = "post-measure"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-796" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport - POST"
  display_name        = "/MeasureReport - POST"
  method              = "POST"
  operation_id        = "post-measurereport"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-797" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media - POST"
  display_name        = "/Media - POST"
  method              = "POST"
  operation_id        = "post-media"
  resource_group_name = var.resource_group_name
  url_template        = "/Media"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-798" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication - POST"
  display_name        = "/Medication - POST"
  method              = "POST"
  operation_id        = "post-medication"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-799" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration - POST"
  display_name        = "/MedicationAdministration - POST"
  method              = "POST"
  operation_id        = "post-medicationadministration"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-800" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense - POST"
  display_name        = "/MedicationDispense - POST"
  method              = "POST"
  operation_id        = "post-medicationdispense"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-801" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest - POST"
  display_name        = "/MedicationRequest - POST"
  method              = "POST"
  operation_id        = "post-medicationrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-802" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement - POST"
  display_name        = "/MedicationStatement - POST"
  method              = "POST"
  operation_id        = "post-medicationstatement"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-803" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition - POST"
  display_name        = "/MessageDefinition - POST"
  method              = "POST"
  operation_id        = "post-messagedefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-804" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader - POST"
  display_name        = "/MessageHeader - POST"
  method              = "POST"
  operation_id        = "post-messageheader"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-805" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem - POST"
  display_name        = "/NamingSystem - POST"
  method              = "POST"
  operation_id        = "post-namingsystem"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-806" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder - POST"
  display_name        = "/NutritionOrder - POST"
  method              = "POST"
  operation_id        = "post-nutritionorder"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-807" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation - POST"
  display_name        = "/Observation - POST"
  method              = "POST"
  operation_id        = "post-observation"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-808" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition - POST"
  display_name        = "/OperationDefinition - POST"
  method              = "POST"
  operation_id        = "post-operationdefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-809" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome - POST"
  display_name        = "/OperationOutcome - POST"
  method              = "POST"
  operation_id        = "post-operationoutcome"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-810" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization - POST"
  display_name        = "/Organization - POST"
  method              = "POST"
  operation_id        = "post-organization"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-811" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters - POST"
  display_name        = "/Parameters - POST"
  method              = "POST"
  operation_id        = "post-parameters"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-812" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient - POST"
  display_name        = "/Patient - POST"
  method              = "POST"
  operation_id        = "post-patient"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-813" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice - POST"
  display_name        = "/PaymentNotice - POST"
  method              = "POST"
  operation_id        = "post-paymentnotice"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-814" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation - POST"
  display_name        = "/PaymentReconciliation - POST"
  method              = "POST"
  operation_id        = "post-paymentreconciliation"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-815" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person - POST"
  display_name        = "/Person - POST"
  method              = "POST"
  operation_id        = "post-person"
  resource_group_name = var.resource_group_name
  url_template        = "/Person"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-816" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition - POST"
  display_name        = "/PlanDefinition - POST"
  method              = "POST"
  operation_id        = "post-plandefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-817" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner - POST"
  display_name        = "/Practitioner - POST"
  method              = "POST"
  operation_id        = "post-practitioner"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-818" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole - POST"
  display_name        = "/PractitionerRole - POST"
  method              = "POST"
  operation_id        = "post-practitionerrole"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-819" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure - POST"
  display_name        = "/Procedure - POST"
  method              = "POST"
  operation_id        = "post-procedure"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-820" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest - POST"
  display_name        = "/ProcedureRequest - POST"
  method              = "POST"
  operation_id        = "post-procedurerequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-821" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest - POST"
  display_name        = "/ProcessRequest - POST"
  method              = "POST"
  operation_id        = "post-processrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-822" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse - POST"
  display_name        = "/ProcessResponse - POST"
  method              = "POST"
  operation_id        = "post-processresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-823" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance - POST"
  display_name        = "/Provenance - POST"
  method              = "POST"
  operation_id        = "post-provenance"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-824" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire - POST"
  display_name        = "/Questionnaire - POST"
  method              = "POST"
  operation_id        = "post-questionnaire"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-825" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse - POST"
  display_name        = "/QuestionnaireResponse - POST"
  method              = "POST"
  operation_id        = "post-questionnaireresponse"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-826" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest - POST"
  display_name        = "/ReferralRequest - POST"
  method              = "POST"
  operation_id        = "post-referralrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-827" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson - POST"
  display_name        = "/RelatedPerson - POST"
  method              = "POST"
  operation_id        = "post-relatedperson"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-828" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup - POST"
  display_name        = "/RequestGroup - POST"
  method              = "POST"
  operation_id        = "post-requestgroup"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-829" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy - POST"
  display_name        = "/ResearchStudy - POST"
  method              = "POST"
  operation_id        = "post-researchstudy"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-830" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject - POST"
  display_name        = "/ResearchSubject - POST"
  method              = "POST"
  operation_id        = "post-researchsubject"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-831" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment - POST"
  display_name        = "/RiskAssessment - POST"
  method              = "POST"
  operation_id        = "post-riskassessment"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-832" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule - POST"
  display_name        = "/Schedule - POST"
  method              = "POST"
  operation_id        = "post-schedule"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-833" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter - POST"
  display_name        = "/SearchParameter - POST"
  method              = "POST"
  operation_id        = "post-searchparameter"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-834" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence - POST"
  display_name        = "/Sequence - POST"
  method              = "POST"
  operation_id        = "post-sequence"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-835" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition - POST"
  display_name        = "/ServiceDefinition - POST"
  method              = "POST"
  operation_id        = "post-servicedefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-836" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot - POST"
  display_name        = "/Slot - POST"
  method              = "POST"
  operation_id        = "post-slot"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-837" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen - POST"
  display_name        = "/Specimen - POST"
  method              = "POST"
  operation_id        = "post-specimen"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-838" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition - POST"
  display_name        = "/StructureDefinition - POST"
  method              = "POST"
  operation_id        = "post-structuredefinition"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-839" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap - POST"
  display_name        = "/StructureMap - POST"
  method              = "POST"
  operation_id        = "post-structuremap"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-840" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription - POST"
  display_name        = "/Subscription - POST"
  method              = "POST"
  operation_id        = "post-subscription"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-841" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance - POST"
  display_name        = "/Substance - POST"
  method              = "POST"
  operation_id        = "post-substance"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-842" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery - POST"
  display_name        = "/SupplyDelivery - POST"
  method              = "POST"
  operation_id        = "post-supplydelivery"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-843" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest - POST"
  display_name        = "/SupplyRequest - POST"
  method              = "POST"
  operation_id        = "post-supplyrequest"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-844" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task - POST"
  display_name        = "/Task - POST"
  method              = "POST"
  operation_id        = "post-task"
  resource_group_name = var.resource_group_name
  url_template        = "/Task"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-845" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport - POST"
  display_name        = "/TestReport - POST"
  method              = "POST"
  operation_id        = "post-testreport"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-846" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript - POST"
  display_name        = "/TestScript - POST"
  method              = "POST"
  operation_id        = "post-testscript"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-847" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet - POST"
  display_name        = "/ValueSet - POST"
  method              = "POST"
  operation_id        = "post-valueset"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-848" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription - POST"
  display_name        = "/VisionPrescription - POST"
  method              = "POST"
  operation_id        = "post-visionprescription"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription"
  response {
    description = "Success"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-849" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/$process-message"
  display_name        = "/$process-message"
  method              = "POST"
  operation_id        = "processmessage"
  resource_group_name = var.resource_group_name
  url_template        = "/$process-message"
  response {
    description = "null"
    status_code = 200
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-850" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Account/{id} - PUT"
  display_name        = "/Account/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-account-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Account/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Account-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-851" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ActivityDefinition/{id} - PUT"
  display_name        = "/ActivityDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-activitydefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ActivityDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ActivityDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-852" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AdverseEvent/{id} - PUT"
  display_name        = "/AdverseEvent/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-adverseevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AdverseEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AdverseEvent-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-853" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AllergyIntolerance/{id} - PUT"
  display_name        = "/AllergyIntolerance/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-allergyintolerance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AllergyIntolerance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AllergyIntolerance-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-854" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Appointment/{id} - PUT"
  display_name        = "/Appointment/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-appointment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Appointment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Appointment-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-855" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AppointmentResponse/{id} - PUT"
  display_name        = "/AppointmentResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-appointmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AppointmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AppointmentResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-856" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/AuditEvent/{id} - PUT"
  display_name        = "/AuditEvent/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-auditevent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/AuditEvent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "AuditEvent-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-857" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Basic/{id} - PUT"
  display_name        = "/Basic/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-basic-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Basic/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Basic-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-858" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Binary/{id} - PUT"
  display_name        = "/Binary/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-binary-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Binary/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Binary-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-859" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/BodySite/{id} - PUT"
  display_name        = "/BodySite/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-bodysite-id"
  resource_group_name = var.resource_group_name
  url_template        = "/BodySite/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "BodySite-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-860" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Bundle/{id} - PUT"
  display_name        = "/Bundle/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-bundle-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Bundle/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Bundle-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-861" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CapabilityStatement/{id} - PUT"
  display_name        = "/CapabilityStatement/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-capabilitystatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CapabilityStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CapabilityStatement-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-862" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CarePlan/{id} - PUT"
  display_name        = "/CarePlan/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-careplan-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CarePlan/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CarePlan-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-863" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CareTeam/{id} - PUT"
  display_name        = "/CareTeam/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-careteam-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CareTeam/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CareTeam-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-864" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ChargeItem/{id} - PUT"
  display_name        = "/ChargeItem/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-chargeitem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ChargeItem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ChargeItem-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-865" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Claim/{id} - PUT"
  display_name        = "/Claim/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-claim-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Claim/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Claim-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-866" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClaimResponse/{id} - PUT"
  display_name        = "/ClaimResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-claimresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClaimResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ClaimResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-867" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ClinicalImpression/{id} - PUT"
  display_name        = "/ClinicalImpression/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-clinicalimpression-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ClinicalImpression/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ClinicalImpression-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-868" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CodeSystem/{id} - PUT"
  display_name        = "/CodeSystem/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-codesystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CodeSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CodeSystem-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-869" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Communication/{id} - PUT"
  display_name        = "/Communication/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-communication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Communication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Communication-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-870" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CommunicationRequest/{id} - PUT"
  display_name        = "/CommunicationRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-communicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CommunicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CommunicationRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-871" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/CompartmentDefinition/{id} - PUT"
  display_name        = "/CompartmentDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-compartmentdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/CompartmentDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "CompartmentDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-872" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Composition/{id} - PUT"
  display_name        = "/Composition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-composition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Composition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Composition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-873" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ConceptMap/{id} - PUT"
  display_name        = "/ConceptMap/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-conceptmap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ConceptMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ConceptMap-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-874" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Condition/{id} - PUT"
  display_name        = "/Condition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-condition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Condition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Condition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-875" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Consent/{id} - PUT"
  display_name        = "/Consent/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-consent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Consent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Consent-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-876" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Contract/{id} - PUT"
  display_name        = "/Contract/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-contract-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Contract/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Contract-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-877" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Coverage/{id} - PUT"
  display_name        = "/Coverage/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-coverage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Coverage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Coverage-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-878" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DataElement/{id} - PUT"
  display_name        = "/DataElement/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-dataelement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DataElement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DataElement-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-879" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DetectedIssue/{id} - PUT"
  display_name        = "/DetectedIssue/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-detectedissue-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DetectedIssue/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DetectedIssue-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-880" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Device/{id} - PUT"
  display_name        = "/Device/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-device-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Device/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Device-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-881" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceComponent/{id} - PUT"
  display_name        = "/DeviceComponent/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-devicecomponent-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceComponent/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceComponent-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-882" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceMetric/{id} - PUT"
  display_name        = "/DeviceMetric/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-devicemetric-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceMetric/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceMetric-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-883" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceRequest/{id} - PUT"
  display_name        = "/DeviceRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-devicerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-884" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DeviceUseStatement/{id} - PUT"
  display_name        = "/DeviceUseStatement/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-deviceusestatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DeviceUseStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DeviceUseStatement-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-885" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DiagnosticReport/{id} - PUT"
  display_name        = "/DiagnosticReport/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-diagnosticreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DiagnosticReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DiagnosticReport-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-886" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentManifest/{id} - PUT"
  display_name        = "/DocumentManifest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-documentmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DocumentManifest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-887" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/DocumentReference/{id} - PUT"
  display_name        = "/DocumentReference/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-documentreference-id"
  resource_group_name = var.resource_group_name
  url_template        = "/DocumentReference/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "DocumentReference-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-888" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityRequest/{id} - PUT"
  display_name        = "/EligibilityRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-eligibilityrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EligibilityRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-889" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EligibilityResponse/{id} - PUT"
  display_name        = "/EligibilityResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-eligibilityresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EligibilityResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EligibilityResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-890" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Encounter/{id} - PUT"
  display_name        = "/Encounter/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-encounter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Encounter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Encounter-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-891" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Endpoint/{id} - PUT"
  display_name        = "/Endpoint/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-endpoint-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Endpoint/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Endpoint-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-892" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentRequest/{id} - PUT"
  display_name        = "/EnrollmentRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-enrollmentrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EnrollmentRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-893" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EnrollmentResponse/{id} - PUT"
  display_name        = "/EnrollmentResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-enrollmentresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EnrollmentResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EnrollmentResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-894" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/EpisodeOfCare/{id} - PUT"
  display_name        = "/EpisodeOfCare/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-episodeofcare-id"
  resource_group_name = var.resource_group_name
  url_template        = "/EpisodeOfCare/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "EpisodeOfCare-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-895" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExpansionProfile/{id} - PUT"
  display_name        = "/ExpansionProfile/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-expansionprofile-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExpansionProfile/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ExpansionProfile-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-896" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ExplanationOfBenefit/{id} - PUT"
  display_name        = "/ExplanationOfBenefit/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-explanationofbenefit-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ExplanationOfBenefit/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ExplanationOfBenefit-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-897" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/FamilyMemberHistory/{id} - PUT"
  display_name        = "/FamilyMemberHistory/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-familymemberhistory-id"
  resource_group_name = var.resource_group_name
  url_template        = "/FamilyMemberHistory/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "FamilyMemberHistory-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-898" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Flag/{id} - PUT"
  display_name        = "/Flag/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-flag-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Flag/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Flag-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-899" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Goal/{id} - PUT"
  display_name        = "/Goal/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-goal-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Goal/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Goal-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-900" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GraphDefinition/{id} - PUT"
  display_name        = "/GraphDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-graphdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GraphDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "GraphDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-901" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Group/{id} - PUT"
  display_name        = "/Group/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-group-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Group-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-902" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/GuidanceResponse/{id} - PUT"
  display_name        = "/GuidanceResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-guidanceresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/GuidanceResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "GuidanceResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-903" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/HealthcareService/{id} - PUT"
  display_name        = "/HealthcareService/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-healthcareservice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/HealthcareService/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "HealthcareService-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-904" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingManifest/{id} - PUT"
  display_name        = "/ImagingManifest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-imagingmanifest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingManifest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImagingManifest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-905" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImagingStudy/{id} - PUT"
  display_name        = "/ImagingStudy/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-imagingstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImagingStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImagingStudy-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-906" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Immunization/{id} - PUT"
  display_name        = "/Immunization/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-immunization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Immunization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Immunization-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-907" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImmunizationRecommendation/{id} - PUT"
  display_name        = "/ImmunizationRecommendation/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-immunizationrecommendation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImmunizationRecommendation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImmunizationRecommendation-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-908" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ImplementationGuide/{id} - PUT"
  display_name        = "/ImplementationGuide/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-implementationguide-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ImplementationGuide/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ImplementationGuide-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-909" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Library/{id} - PUT"
  display_name        = "/Library/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-library-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Library/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Library-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-910" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Linkage/{id} - PUT"
  display_name        = "/Linkage/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-linkage-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Linkage/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Linkage-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-911" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/List/{id} - PUT"
  display_name        = "/List/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-list-id"
  resource_group_name = var.resource_group_name
  url_template        = "/List/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "List-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-912" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Location/{id} - PUT"
  display_name        = "/Location/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-location-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Location/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Location-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-913" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Measure/{id} - PUT"
  display_name        = "/Measure/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-measure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Measure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Measure-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-914" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MeasureReport/{id} - PUT"
  display_name        = "/MeasureReport/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-measurereport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MeasureReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MeasureReport-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-915" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Media/{id} - PUT"
  display_name        = "/Media/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-media-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Media/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Media-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-916" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Medication/{id} - PUT"
  display_name        = "/Medication/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-medication-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Medication/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Medication-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-917" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationAdministration/{id} - PUT"
  display_name        = "/MedicationAdministration/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-medicationadministration-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationAdministration/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationAdministration-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-918" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationDispense/{id} - PUT"
  display_name        = "/MedicationDispense/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-medicationdispense-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationDispense/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationDispense-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-919" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationRequest/{id} - PUT"
  display_name        = "/MedicationRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-medicationrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-920" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MedicationStatement/{id} - PUT"
  display_name        = "/MedicationStatement/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-medicationstatement-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MedicationStatement/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MedicationStatement-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-921" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageDefinition/{id} - PUT"
  display_name        = "/MessageDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-messagedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MessageDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-922" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/MessageHeader/{id} - PUT"
  display_name        = "/MessageHeader/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-messageheader-id"
  resource_group_name = var.resource_group_name
  url_template        = "/MessageHeader/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "MessageHeader-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-923" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NamingSystem/{id} - PUT"
  display_name        = "/NamingSystem/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-namingsystem-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NamingSystem/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "NamingSystem-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-924" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/NutritionOrder/{id} - PUT"
  display_name        = "/NutritionOrder/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-nutritionorder-id"
  resource_group_name = var.resource_group_name
  url_template        = "/NutritionOrder/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "NutritionOrder-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-925" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Observation/{id} - PUT"
  display_name        = "/Observation/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-observation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Observation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Observation-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-926" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationDefinition/{id} - PUT"
  display_name        = "/OperationDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-operationdefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "OperationDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-927" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/OperationOutcome/{id} - PUT"
  display_name        = "/OperationOutcome/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-operationoutcome-id"
  resource_group_name = var.resource_group_name
  url_template        = "/OperationOutcome/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "OperationOutcome-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-928" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Organization/{id} - PUT"
  display_name        = "/Organization/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-organization-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Organization/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Organization-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-929" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Parameters/{id} - PUT"
  display_name        = "/Parameters/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-parameters-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Parameters/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Parameters-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-930" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Patient/{id} - PUT"
  display_name        = "/Patient/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-patient-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Patient/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Patient-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-931" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentNotice/{id} - PUT"
  display_name        = "/PaymentNotice/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-paymentnotice-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentNotice/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PaymentNotice-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-932" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PaymentReconciliation/{id} - PUT"
  display_name        = "/PaymentReconciliation/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-paymentreconciliation-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PaymentReconciliation/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PaymentReconciliation-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-933" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Person/{id} - PUT"
  display_name        = "/Person/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-person-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Person/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Person-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-934" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PlanDefinition/{id} - PUT"
  display_name        = "/PlanDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-plandefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PlanDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PlanDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-935" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Practitioner/{id} - PUT"
  display_name        = "/Practitioner/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-practitioner-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Practitioner/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Practitioner-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-936" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/PractitionerRole/{id} - PUT"
  display_name        = "/PractitionerRole/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-practitionerrole-id"
  resource_group_name = var.resource_group_name
  url_template        = "/PractitionerRole/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "PractitionerRole-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-937" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Procedure/{id} - PUT"
  display_name        = "/Procedure/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-procedure-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Procedure/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Procedure-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-938" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcedureRequest/{id} - PUT"
  display_name        = "/ProcedureRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-procedurerequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcedureRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcedureRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-939" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessRequest/{id} - PUT"
  display_name        = "/ProcessRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-processrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcessRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-940" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ProcessResponse/{id} - PUT"
  display_name        = "/ProcessResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-processresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ProcessResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ProcessResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-941" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Provenance/{id} - PUT"
  display_name        = "/Provenance/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-provenance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Provenance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Provenance-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-942" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Questionnaire/{id} - PUT"
  display_name        = "/Questionnaire/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-questionnaire-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Questionnaire/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Questionnaire-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-943" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/QuestionnaireResponse/{id} - PUT"
  display_name        = "/QuestionnaireResponse/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-questionnaireresponse-id"
  resource_group_name = var.resource_group_name
  url_template        = "/QuestionnaireResponse/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "QuestionnaireResponse-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-944" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ReferralRequest/{id} - PUT"
  display_name        = "/ReferralRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-referralrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ReferralRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ReferralRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-945" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RelatedPerson/{id} - PUT"
  display_name        = "/RelatedPerson/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-relatedperson-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RelatedPerson/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RelatedPerson-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-946" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RequestGroup/{id} - PUT"
  display_name        = "/RequestGroup/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-requestgroup-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RequestGroup/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RequestGroup-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-947" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchStudy/{id} - PUT"
  display_name        = "/ResearchStudy/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-researchstudy-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchStudy/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ResearchStudy-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-948" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ResearchSubject/{id} - PUT"
  display_name        = "/ResearchSubject/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-researchsubject-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ResearchSubject/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ResearchSubject-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-949" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/RiskAssessment/{id} - PUT"
  display_name        = "/RiskAssessment/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-riskassessment-id"
  resource_group_name = var.resource_group_name
  url_template        = "/RiskAssessment/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "RiskAssessment-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-950" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Schedule/{id} - PUT"
  display_name        = "/Schedule/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-schedule-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Schedule/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Schedule-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-951" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SearchParameter/{id} - PUT"
  display_name        = "/SearchParameter/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-searchparameter-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SearchParameter/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SearchParameter-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-952" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Sequence/{id} - PUT"
  display_name        = "/Sequence/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-sequence-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Sequence/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Sequence-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-953" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ServiceDefinition/{id} - PUT"
  display_name        = "/ServiceDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-servicedefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ServiceDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ServiceDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-954" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Slot/{id} - PUT"
  display_name        = "/Slot/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-slot-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Slot/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Slot-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-955" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Specimen/{id} - PUT"
  display_name        = "/Specimen/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-specimen-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Specimen/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Specimen-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-956" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureDefinition/{id} - PUT"
  display_name        = "/StructureDefinition/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-structuredefinition-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureDefinition/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "StructureDefinition-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-957" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/StructureMap/{id} - PUT"
  display_name        = "/StructureMap/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-structuremap-id"
  resource_group_name = var.resource_group_name
  url_template        = "/StructureMap/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "StructureMap-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-958" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Subscription/{id} - PUT"
  display_name        = "/Subscription/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-subscription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Subscription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Subscription-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-959" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Substance/{id} - PUT"
  display_name        = "/Substance/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-substance-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Substance/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Substance-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-960" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyDelivery/{id} - PUT"
  display_name        = "/SupplyDelivery/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-supplydelivery-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyDelivery/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SupplyDelivery-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-961" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/SupplyRequest/{id} - PUT"
  display_name        = "/SupplyRequest/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-supplyrequest-id"
  resource_group_name = var.resource_group_name
  url_template        = "/SupplyRequest/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "SupplyRequest-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-962" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/Task/{id} - PUT"
  display_name        = "/Task/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-task-id"
  resource_group_name = var.resource_group_name
  url_template        = "/Task/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "Task-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-963" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestReport/{id} - PUT"
  display_name        = "/TestReport/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-testreport-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestReport/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "TestReport-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-964" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/TestScript/{id} - PUT"
  display_name        = "/TestScript/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-testscript-id"
  resource_group_name = var.resource_group_name
  url_template        = "/TestScript/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "TestScript-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-965" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/ValueSet/{id} - PUT"
  display_name        = "/ValueSet/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-valueset-id"
  resource_group_name = var.resource_group_name
  url_template        = "/ValueSet/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "ValueSet-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_operation" "res-966" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  description         = "/VisionPrescription/{id} - PUT"
  display_name        = "/VisionPrescription/{id} - PUT"
  method              = "PUT"
  operation_id        = "put-visionprescription-id"
  resource_group_name = var.resource_group_name
  url_template        = "/VisionPrescription/{id}"
  response {
    description = "Success"
    status_code = 200
  }
  template_parameter {
    name      = "id"
    required  = true
    schema_id = "649c729dc36d8f14f8b1683e"
    type      = "string"
    type_name = "VisionPrescription-id-PutRequest"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
resource "azurerm_api_management_api_schema" "res-967" {
  api_management_name   = var.api_management_name
  api_name            = local.api_name
  components          = "{\"schemas\":{\"Account-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AccountGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Account_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ActivityDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEventGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AdverseEvent_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-25\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntoleranceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AllergyIntolerance_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-7\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AppointmentResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Appointment_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEventGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"AuditEvent_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"BasicGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Basic_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"BinaryGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Binary_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Body\":{\"type\":\"object\"},\"BodySite-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySiteGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BodySite_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle-id-validateGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"BundleGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Bundle_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatementGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CapabilityStatement_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-8\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CarePlanGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CarePlan_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeamGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CareTeam_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-13\":{\"type\":\"integer\",\"x-apim-inline\":true},\"ChargeItemGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItemGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ChargeItem_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClaimResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Claim_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpressionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ClinicalImpression_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystemGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CodeSystem_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-12\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CommunicationRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Communication_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompartmentDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-11\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CompositionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Composition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMapGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConceptMap_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-12\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-32\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-33\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-7\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-8\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConditionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Condition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ConsentGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Consent_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-15\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ContractGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Contract_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"CoverageGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Coverage_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElementGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DataElement_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssueGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DetectedIssue_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponentGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceComponent_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetricGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceMetric_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatementGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DeviceUseStatement_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Device_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReportGetRequest-9\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DiagnosticReport_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentManifest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-14\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-17\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-19\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-32\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-33\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-34\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-35\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-36\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReferenceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"DocumentReference_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EligibilityResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-11\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EncounterGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Encounter_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EndpointGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Endpoint_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EnrollmentResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCareGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"EpisodeOfCare_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfileGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExpansionProfile_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefitGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ExplanationOfBenefit_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistoryGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"FamilyMemberHistory_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"FlagGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Flag_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-15\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"GoalGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Goal_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GraphDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"GroupGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Group_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"GuidanceResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareServiceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"HealthcareService_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingManifest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-14\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudyGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImagingStudy_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-8\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImmunizationRecommendation_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Immunization_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuideGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ImplementationGuide_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"LibraryGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Library_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"LinkageGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Linkage_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"List-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-7\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ListGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"List_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"List_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"LocationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Location_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReportGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MeasureReport_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Measure_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MediaGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Media_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-12\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministrationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationAdministration_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-14\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispenseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationDispense_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-7\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatementGetRequest-9\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MedicationStatement_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Medication_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeaderGetRequest-9\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"MessageHeader_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystemGetRequest-9\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NamingSystem_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-7\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrderGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"NutritionOrder_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-32\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-33\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-34\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-35\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-36\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-37\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-38\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-39\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-40\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-41\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-42\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-43\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-44\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-45\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-46\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-47\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-48\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-8\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ObservationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Observation_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcomeGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OperationOutcome_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"OrganizationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Organization_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ParametersGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Parameters_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient-id-validateGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-32\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-33\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-34\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-35\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PatientGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Patient_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNoticeGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentNotice_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliationGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PaymentReconciliation_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PersonGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Person_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PlanDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRoleGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"PractitionerRole_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Practitioner_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcedureRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Procedure_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProcessResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ProvenanceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Provenance_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-11\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponseGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"QuestionnaireResponse_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Questionnaire_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-14\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-19\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ReferralRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPersonGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RelatedPerson_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroupGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RequestGroup_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-5\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudyGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchStudy_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubjectGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ResearchSubject_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessmentGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"RiskAssessment_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ScheduleGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Schedule_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameterGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SearchParameter_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SequenceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Sequence_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-10\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ServiceDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SlotGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Slot_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-6\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-8\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SpecimenGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Specimen_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-31\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-32\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinitionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureDefinition_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMapGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"StructureMap_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubscriptionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Subscription_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-3\":{\"type\":\"integer\",\"x-apim-inline\":true},\"SubstanceGetRequest-4\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SubstanceGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Substance_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDeliveryGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyDelivery_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequestGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"SupplyRequest_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-14\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-17\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-23\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-24\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-25\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-26\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-27\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-28\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-29\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-30\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"TaskGetRequest-9\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"Task_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"Task_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-1\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-13\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-3\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReportGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestReport_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScriptGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"TestScript_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-16\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-17\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-18\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-19\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-20\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-21\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-22\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSetGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"ValueSet_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-DeleteRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-PutRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-_history-vid-GetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-_history-vid-GetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription-id-_historyGetRequest-2\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-10\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-11\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-12\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-13\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-14\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-15\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-2\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-3\":{\"format\":\"date\",\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-4\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-5\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-6\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-7\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-8\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescriptionGetRequest-9\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription_historyGetRequest\":{\"type\":\"string\",\"x-apim-inline\":true},\"VisionPrescription_historyGetRequest-1\":{\"type\":\"string\",\"x-apim-inline\":true}}}"
  content_type        = "application/vnd.oai.openapi.components+json"
  resource_group_name = var.resource_group_name
  schema_id           = "649c729dc36d8f14f8b1683e"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}
