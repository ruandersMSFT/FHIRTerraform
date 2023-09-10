variable "location" {
  type        = string
  description = "Static Site resource location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Static Site Name"
}

variable "resource_prefix" {
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
  default     = {}
}
