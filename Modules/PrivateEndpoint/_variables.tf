variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "approval_required" {
  type        = bool
  default     = false
}

variable "resource_id" {
  type        = string
}

variable "subresource_names" {
  type        = list(string)
}

variable "subnet_id" {
  type        = string
}

variable "private_dns_zone_id" {
  type        = string
}

variable "name" {
  type        = string
}

variable "tags" {
  type        = map(string)
}
