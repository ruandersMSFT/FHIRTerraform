variable "location" {
  type        = string
  description = "Service Plan resource location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Service Plan Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "sku_name" {
  type        = string
  description = "Specifies the Sku of the Service Plan"
}

variable "os_type" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
