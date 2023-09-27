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
  description = "API Management Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "publisher_email" {
  type        = string
  description = ""
}

variable "publisher_name" {
  type        = string
  description = ""
}

variable "sku_name" {
  type        = string
  description = "Specifies the Sku of API Management"
}

variable "fhir_service_url" {
  type        = string
  description = ""
}

variable "static_site_hostname" {
  type        = string
  description = ""
}

variable "aad_function_hostname" {
  type        = string
  description = ""
}

variable "azure_audience" {
  type        = string
  description = ""
}

variable "process_message_function_url" {
  type        = string
  description = ""
}

variable "subnet_id" {
  type        = string
  description = ""
}


variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
