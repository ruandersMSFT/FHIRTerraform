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

variable "sku" {
  type        = string
}

variable "retention_in_days" {
  type        = string
}

variable "ampls_scope_name" {
  type        = string
}

variable "tags" {
  type        = map(string)
}
