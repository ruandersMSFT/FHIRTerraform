variable "location" {
  type        = string
  description = "Service Bus resource location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Service Bus Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "sku" {
  type        = string
  description = "Specifies the Sku of the Service Bus Namespace"
}

variable "capacity" {
  type        = number
  description = "Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
  default     = 0
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
