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

variable "subnet_id" {
  type        = string
}

variable "private_dns_zone_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
}
