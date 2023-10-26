variable "location" {
  type        = string
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

variable "sku_name" {
  type        = string
}

variable "os_type" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
