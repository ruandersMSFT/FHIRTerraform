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

variable "publisher_email" {
  type        = string
}

variable "publisher_name" {
  type        = string
}

variable "sku_name" {
  type        = string
}

variable "subnet_id" {
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  default     = {}
}
