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

variable "subnet_id" {
  type        = string
  default     = null
}

variable "private_dns_zone_id" {
  type        = string
  default     = null
}

variable "keys" {
  type        = map(string)
  default     = {}
}

variable "tags" {
  type        = map(string)
  default     = {}
}
