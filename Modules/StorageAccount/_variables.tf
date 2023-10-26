variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "resource_prefix" {
  type        = string
}

variable "large_file_share_enabled" {
  type        = bool
  default     = false
}

variable "is_hns_enabled" {
  type        = bool
  default     = false
}

variable "assign_identity" {
  type        = bool
}

variable "account_kind" {
  type        = string
}

variable "account_tier" {
  type        = string
}

variable "account_replication_type" {
  type        = string
}

variable "access_tier" {
  type        = string
  default     = null
}

variable "min_tls_version" {
  type        = string
  default     = "TLS1_2"
}

variable "name" {
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
