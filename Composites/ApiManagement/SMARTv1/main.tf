locals {
  api_name = "smartv1"
}

resource "azurerm_api_management_api" "this" {
  api_management_name   = var.api_management_name
  name                  = local.api_name
  display_name          = "SMART v1"
  protocols             = ["https"]
  resource_group_name   = var.resource_group_name
  revision              = "1"
  subscription_required = false
}

resource "azurerm_api_management_api_operation" "processMessagePost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "$process-message POST"
  method              = "POST"
  operation_id        = "processMessagePost"
  resource_group_name = var.resource_group_name
  url_template        = "/$process-message"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "processMessagePost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "processMessagePost"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/processMessage.tftpl", {
    base_url = var.base_url
  })

  depends_on = [
    azurerm_api_management_api_operation.processMessagePost,
  ]
}

resource "azurerm_api_management_api_operation" "allOtherRequestsGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "all-other-operations GET"
  method              = "GET"
  operation_id        = "allOtherRequestsGet"
  resource_group_name = var.resource_group_name
  url_template        = "/*"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "allOtherRequestsGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "allOtherRequestsGet"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/allOtherRequestsGet.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.allOtherRequestsGet,
  ]
}

resource "azurerm_api_management_api_operation" "allOtherRequestsPost" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "all-other-operations POST"
  method              = "POST"
  operation_id        = "allOtherRequestsPost"
  resource_group_name = var.resource_group_name
  url_template        = "/*"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation" "deleteExport" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "Export Delete"
  method              = "DELETE"
  operation_id        = "deleteExport"
  resource_group_name = var.resource_group_name
  url_template        = "/_operations/export/{exportId}"
  template_parameter {
    description = "ID of the export to delete"
    name        = "exportId"
    required    = true
    type        = "SecureString"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "deleteExport" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "deleteExport"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/deleteExport.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.deleteExport,
  ]
}

resource "azurerm_api_management_api_operation" "exportStatusCheck" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "Export Check Status"
  method              = "GET"
  operation_id        = "exportStatusCheck"
  resource_group_name = var.resource_group_name
  url_template        = "/_operations/export/{exportId}"
  template_parameter {
    description = "Identifier of the $export operation"
    name        = "exportId"
    required    = true
    type        = "SecureString"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "exportStatusCheck" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "exportStatusCheck"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/exportStatusCheck.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.exportStatusCheck,
  ]
}

resource "azurerm_api_management_api_operation" "getExportedData" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "GET Exported Data"
  method              = "GET"
  operation_id        = "getExportedData"
  resource_group_name = var.resource_group_name
  url_template        = "/_export/{containerName}/{folderName}/{fileName}"
  template_parameter {
    description = "Name of the export storage container. Must match the object id of the token"
    name        = "containerName"
    required    = true
    type        = "SecureString"
  }
  template_parameter {
    name     = "folderName"
    required = true
    type     = "SecureString"
  }
  template_parameter {
    name     = "fileName"
    required = true
    type     = "SecureString"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "getExportedData" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "getExportedData"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/getExportedData.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.getExportedData,
  ]
}

resource "azurerm_api_management_api_operation" "groupExport" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "Export Group"
  method              = "GET"
  operation_id        = "groupExport"
  resource_group_name = var.resource_group_name
  url_template        = "/Group/{logicalId}/$export"
  template_parameter {
    description = "ID of the group to export"
    name        = "logicalId"
    required    = true
    type        = "SecureString"
  }
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "groupExport" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "groupExport"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/groupExport.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.groupExport,
  ]
}

resource "azurerm_api_management_api_operation" "metadatOverride" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "/metadata"
  method              = "GET"
  operation_id        = "metadatOverride"
  resource_group_name = var.resource_group_name
  url_template        = "/metadata"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "metadatOverride" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "metadatOverride"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/metadatOverride.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.metadatOverride,
  ]
}

resource "azurerm_api_management_api_operation" "smartStyleGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART Style"
  method              = "GET"
  operation_id        = "smartStyleGet"
  resource_group_name = var.resource_group_name
  url_template        = "/smart-style.json"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartStyleGet" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartStyleGet"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartStyleGet.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartStyleGet,
  ]
}

resource "azurerm_api_management_api_operation" "smartWellKnown" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  display_name        = "SMART well-known endpoint"
  method              = "GET"
  operation_id        = "smartWellKnown"
  resource_group_name = var.resource_group_name
  url_template        = "/.well-known/smart-configuration"
  depends_on = [
    azurerm_api_management_api.this,
  ]
}

resource "azurerm_api_management_api_operation_policy" "smartWellKnown" {
  api_management_name = var.api_management_name
  api_name            = local.api_name
  operation_id        = "smartWellKnown"
  resource_group_name = var.resource_group_name

  xml_content = templatefile("${path.module}/policies/smartWellKnown.tftpl", {})

  depends_on = [
    azurerm_api_management_api_operation.smartWellKnown,
  ]
}
