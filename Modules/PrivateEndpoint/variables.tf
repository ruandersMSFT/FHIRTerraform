variable "location" {
  type        = string
  description = "Private Endpoint resource location if different than the resource group's location."
  default = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "approval_required" {
  type        = bool
  default     = false
  description = ""
}

variable "resource_id" {
  type        = string
  description = ""
}

variable "subresource_names" {
  type        = list(string)
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

variable "name" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
}
