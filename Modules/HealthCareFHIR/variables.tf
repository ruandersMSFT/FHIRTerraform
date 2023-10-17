variable "location" {
  type        = string
  description = "FHIR Service location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "azurerm_healthcare_workspace_id" {
  type        = string
  description = ""
}

variable "workspace_name" {
  type        = string
  description = ""
}

variable "name" {
  type        = string
  description = "Azure Health Care FHIR Service Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "configuration_export_storage_account_name" {
  type        = string
  description = "Azure Health Care FHIR Service Storage Account Name"
}

variable "authentication_audience" {
  type        = string
  description = ""
}

variable "authentication_authority" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
}
