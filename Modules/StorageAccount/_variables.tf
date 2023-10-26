variable "location" {
  type        = string
  description = "Storage Account resource location"
}

variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "large_file_share_enabled" {
  type        = bool
  default     = false
  description = "Is HNS Enabled"
}

variable "is_hns_enabled" {
  type        = bool
  default     = false
  description = "Is HNS Enabled"
}

variable "assign_identity" {
  type        = bool
  description = ""
}

variable "account_kind" {
  type        = string
  description = "Account Kind (BlobStorage, BlockBlobStorage, FileStorage, Storage or StorageV2)"
}

variable "account_tier" {
  type        = string
  description = "Account Tier (Standard or Premium)"
}

variable "account_replication_type" {
  type        = string
  description = "Account Replication Type (LRS, GRS, RAGRS, ZRS, GZRS or RAGZRS)"
}


variable "access_tier" {
  type        = string
  description = "Access Tier (Hot or Cool)"
  default     = null
}

variable "min_tls_version" {
  type        = string
  description = "Minimum TLS Version"
  default     = "TLS1_2"
}

variable "name" {
  type        = string
  description = "Azure Storage Account Name"
}

variable "subnet_id" {
  type        = string
  description = ""
}

variable "private_dns_zone_id" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
}
