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

variable "tenant_id" {
  type        = string
}

variable "sku_name" {
  type        = string
  default     = "standard"
}

variable "enabled_for_deployment" {
  type        = bool
  default     = null
}

variable "enabled_for_disk_encryption" {
  type        = bool
  default     = null
}

variable "enabled_for_template_deployment" {
  type        = bool
  default     = null
}

variable "purge_protection_enabled" {
  type        = bool
  default     = true
}

variable "network_acls" {
  type = object({
    bypass                     = string       # (Required) Specifies which traffic can bypass the network rules. Possible values are AzureServices and None.
    default_action             = string       # (Required) The Default Action to use when no rules match from ip_rules / virtual_network_subnet_ids. Possible values are Allow and Deny.
    ip_rules                   = list(string) # (Optional) One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault.
    virtual_network_subnet_ids = list(string) # (Optional) One or more Subnet ID's which should be able to access this Key Vault.
  })
  default     = null
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
