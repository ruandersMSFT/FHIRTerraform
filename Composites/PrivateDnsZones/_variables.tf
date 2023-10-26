variable "resource_group_name" {
  type        = string
}

variable "vnet_name" {
  type        = string
}

variable "virtual_network_id" {
  type        = string
}

variable "networking_resource_group" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
