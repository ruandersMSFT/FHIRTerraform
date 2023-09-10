variable "resource_prefix" {
  type        = string
  description = ""
  default = null
}

variable "resource_group_name" {
  type        = string
  description = ""
  default = null
}

variable "location" {
  type        = string
  description = ""
  default = null
}


variable "subnet_id" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = "" 
  default = {}
}
