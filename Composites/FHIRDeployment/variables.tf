variable "resource_prefix" {
  type        = string
  description = ""
  default = null
}

variable "keyvault_resource_group_name" {
  type        = string
  description = ""
}

variable "keyvault_name" {
  type        = string
  description = ""
}

variable "keyvault_sku_name" {
  type        = string
  description = ""
}

variable "keyvault_private_dns_zone_id" {
  type        = string
  description = ""
  default = null
}

variable "keyvault_private_endpoint_subnet_id" {
  type        = string
  description = ""
  default = null
}

variable "tags" {
  type        = map(string)
  description = "" 
  default = {}
}
