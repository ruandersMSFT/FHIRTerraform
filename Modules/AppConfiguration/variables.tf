variable "location" {
  type        = string
  description = "Application Configuration resource location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "App Configuraiton Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "sku" {
  type        = string
  description = "Specifies the Sku of the App Configuration. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018"
}

variable "subnet_id" {
  type        = string
  description = ""
  default = null
}

variable "private_dns_zone_id" {
  type        = string
  description = ""
  default = null
}

variable "keys" {
  type        = map(string)
  description = ""
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
