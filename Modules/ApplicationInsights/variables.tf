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
  description = "Application Insights Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "application_type" {
  type        = string
  description = "Specifies the application type for Application Insights"
}

variable "workspace_id" {
  type        = string
  description = "Specifies the Log Analytics Workspace Id used by Application Insights"
}

variable "sampling_percentage" {
  type        = number
  description = "Specifies the Log Analytics Workspace Id used by Application Insights"
}

variable "ampls_scope_name" {
  type        = string
  description = "Azure Monitor Private Link Scope Name"
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
