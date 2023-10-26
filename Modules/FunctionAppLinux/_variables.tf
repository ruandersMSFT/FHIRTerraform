variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_prefix" {
  type        = string
}

variable "service_plan_id" {
  type        = string
}

variable "storage_account_access_key" {
  type        = string
}

variable "storage_account_name" {
  type        = string
}

variable "application_insights_connection_string" {
  type        = string
}

variable "application_insights_key" {
  type        = string
}

variable "allowed_origins" {
  type        = list(string)
  default     = null
}

variable "FhirFunctionAppConfigConnectionString" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "private_dns_zone_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
}

variable "app_settings" {
  type        = map(string)
}
