variable "location" {
  type        = string
  description = "Network resources location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Azure Function App Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "service_plan_id" {
  type        = string
  description = ""
}

variable "storage_account_access_key" {
  type        = string
  description = ""
}

variable "storage_account_name" {
  type        = string
  description = ""
}

variable "application_insights_connection_string" {
  type        = string
  description = ""
}

variable "application_insights_key" {
  type        = string
  description = ""
}

variable "allowed_origins" {
  type        = list(string)
  description = ""
  default     = null
}

variable "FhirFunctionAppConfigConnectionString" {
  type        = string
  description = ""
}

variable "subnet_id" {
  type        = string
  description = ""
}

variable "private_dns_zone_id" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
}

variable "app_settings" {
  type        = map(string)
  description = ""
}
