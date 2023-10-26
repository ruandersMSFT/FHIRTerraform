variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "azurerm_healthcare_workspace_id" {
  type        = string
}

variable "workspace_name" {
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_prefix" {
  type        = string
}

variable "configuration_export_storage_account_name" {
  type        = string
}

variable "authentication_audience" {
  type        = string
}

variable "authentication_authority" {
  type        = string
}

variable "tags" {
  type        = map(string)
}
