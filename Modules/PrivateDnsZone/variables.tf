variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Private Dns Zone Name"
}

variable "zone_to_vnet_link_name" {
  type        = string
  description = ""
}

variable "virtual_network_id" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
