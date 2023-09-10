variable "location" {
  type        = string
  description = "Bastion Host resources location if different than the resource group's location."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

/*
variable "name" {
  type        = string
  description = "Bastion Host Name"
}
*/

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "subnet_id" {
  type        = string
  description = "Bastion Host Azure Subnet Resource Id"
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
