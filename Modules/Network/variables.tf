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
  description = "Virtual Network Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
