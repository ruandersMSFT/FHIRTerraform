variable "resource_group_name" {
  type        = string
  description = ""
}

variable "vnet_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "virtual_network_id" {
  type        = string
  description = ""
}

variable "networking_resource_group" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
