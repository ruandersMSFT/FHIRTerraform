variable "location" {
  type        = string
  default     = null
}

variable "resource_group_name" {
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_prefix" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
