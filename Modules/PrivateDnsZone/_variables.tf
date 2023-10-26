variable "resource_group_name" {
  type        = string
}

variable "name" {
  type        = string
}

variable "zone_to_vnet_link_name" {
  type        = string
}

variable "virtual_network_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
