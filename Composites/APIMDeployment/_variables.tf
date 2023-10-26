variable "location" {
  type        = string
  default     = null
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

variable "tenant_id" {
  type        = string
}

variable "publisher_email" {
  type        = string
}

variable "publisher_name" {
  type        = string
}

variable "sku_name" {
  type        = string
}

variable "fhir_service_url" {
  type        = string
}

variable "static_site_hostname" {
  type        = string
}

variable "aad_function_hostname" {
  type        = string
}

variable "azure_audience" {
  type        = string
}

variable "process_message_function_url" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
