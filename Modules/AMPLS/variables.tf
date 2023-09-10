variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "name" {
  type        = string
  description = "Azure Monitor Private Link Scope Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = "" 
  default = {}
}
