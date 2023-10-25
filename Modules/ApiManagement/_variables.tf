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

variable "subnet_id" {
  type        = string
  description = ""
  default     = null
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
