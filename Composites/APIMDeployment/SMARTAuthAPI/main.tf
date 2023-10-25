locals {
  api_name = "auth"
}

resource "azurerm_api_management_api" "this" {
  api_management_name   = var.api_management_name
  name                  = local.api_name
  display_name          = "SMART Auth API"
  path                  = "auth"
  protocols             = ["https"]
  resource_group_name   = var.resource_group_name
  revision              = "1"
  service_url           = var.a
  subscription_required = false
}

resource "azurerm_api_management_api_operation" "blockAccessTokenPost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "Block Access Token"
  method              = "POST"
  operation_id        = "blockAccessTokenPost"
  resource_group_name = var.resource_group_name
  url_template        = "/block-access-token"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "blockAccessTokenPost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "blockAccessTokenPost"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/blockAccessTokenPost.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.blockAccessTokenPost
  ]
}

resource "azurerm_api_management_api_operation" "smartAppConsentInfoEndpointGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Consent Info (GET)"
  method              = "GET"
  operation_id        = "smartAppConsentInfoEndpointGet"
  resource_group_name = var.resource_group_name
  url_template        = "/appConsentInfo"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartAppConsentInfoEndpointGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartAppConsentInfoEndpointGet"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartAppConsentInfoEndpointGet.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartAppConsentInfoEndpointGet
  ]
}

resource "azurerm_api_management_api_operation" "smartAppConsentInfoEndpointOptions" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Consent Info (OPTIONS)"
  method              = "OPTIONS"
  operation_id        = "smartAppConsentInfoEndpointOptions"
  resource_group_name = var.resource_group_name
  url_template        = "/appConsentInfo"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartAppConsentInfoEndpointOptions" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartAppConsentInfoEndpointOptions"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartAppConsentInfoEndpointGet.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartAppConsentInfoEndpointOptions
  ]
}

resource "azurerm_api_management_api_operation" "smartAppConsentInfoEndpointPost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Consent Info (POST)"
  method              = "POST"
  operation_id        = "smartAppConsentInfoEndpointPost"
  resource_group_name = var.resource_group_name
  url_template        = "/appConsentInfo"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartAppConsentInfoEndpointPost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartAppConsentInfoEndpointPost"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartAppConsentInfoEndpointPost.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartAppConsentInfoEndpointPost
  ]
}

resource "azurerm_api_management_api_operation" "smartAuthorizeEndpoint" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Authorize Endpoint (GET)"
  method              = "GET"
  operation_id        = "smartAuthorizeEndpoint"
  resource_group_name = var.resource_group_name
  url_template        = "/authorize"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartAuthorizeEndpoint" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartAuthorizeEndpoint"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartAuthorizeEndpoint.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartAuthorizeEndpoint
  ]
}

resource "azurerm_api_management_api_operation" "smartContextCacheOptions" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Context Cache (OPTIONS)"
  method              = "OPTIONS"
  operation_id        = "smartContextCacheOptions"
  resource_group_name = var.resource_group_name
  url_template        = "/context-cache"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartContextCacheOptions" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartContextCacheOptions"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartContextCacheOptions.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartContextCacheOptions
  ]
}

resource "azurerm_api_management_api_operation" "smartContextCachePost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Context Cache (POST)"
  method              = "POST"
  operation_id        = "smartContextCachePost"
  resource_group_name = var.resource_group_name
  url_template        = "/context-cache"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartContextCachePost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartContextCachePost"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartContextCachePost.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartContextCachePost
  ]
}

resource "azurerm_api_management_api_operation" "smartContextFrontendAppGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "Auth Context Frontend App (GET)"
  method              = "GET"
  operation_id        = "smartContextFrontendAppGet"
  resource_group_name = var.resource_group_name
  url_template        = "/context/*"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartContextFrontendAppGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartContextFrontendAppGet"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartContextFrontendAppGet.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartContextFrontendAppGet
  ]
}

resource "azurerm_api_management_api_operation" "smartTokenEndpoint" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Token Endpoint"
  method              = "POST"
  operation_id        = "smartTokenEndpoint"
  resource_group_name = var.resource_group_name
  url_template        = "/token"
  depends_on = [
    azurerm_api_management_api.this
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartTokenEndpoint" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartTokenEndpoint"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartTokenEndpoint.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartTokenEndpoint
  ]
}
