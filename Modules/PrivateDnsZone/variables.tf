variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Private Dns Zone Name"
}

variable "vnet_links" {
  type = list(object({
    zone_to_vnet_link_name    = string
    vnet_name                 = string
    virtual_network_id        = string
    networking_resource_group = string
    registration_enabled      = bool
  }))
  default = []
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
