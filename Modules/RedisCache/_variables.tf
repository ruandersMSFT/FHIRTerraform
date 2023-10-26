variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "name" {
  type        = string
  default     = null
}

variable "resource_prefix" {
  type        = string
}

variable "sku" {
  type        = string
  default     = null
}

variable "capacity" {
  type        = number
}

variable "enable_non_ssl_port" {
  type        = bool
  default     = false
}

variable "minimum_tls_version" {
  type        = string
  default     = "1.2"
}


variable "tags" {
  type        = map(string)
}

variable "redis_cache_additional_tags" {
  type        = map(string)
  default     = {}
}

variable "redis_cache_instances" {
  type = map(object({
    subnet_name               = string
    vnet_name                 = string
    networking_resource_group = string
    shard_count               = number
    static_ip                 = string
    patch_schedules = list(object({
      day_of_week    = string
      start_hour_utc = number
    }))
    redis_configuration = object({
      enable_authentication           = bool
      maxmemory_reserved              = number
      maxmemory_delta                 = number
      maxmemory_policy                = string
      maxfragmentationmemory_reserved = number
      rdb_backup_enabled              = bool
      rdb_backup_frequency            = number
      rdb_backup_max_snapshot_count   = number
      backup_storage_account_name     = string
    })
  }))
  default     = {}
}

variable "firewall_rules" {
  type = list(object({
    name             = string # (Required) Specifies the name of the Firewall Rule.
    start_ip_address = string # (Required) The starting IP Address to allow through the firewall for this rule
    end_ip_address   = string # (Required) The ending IP Address to allow through the firewall for this rule
    redis_cache_key  = string # (Reuiqred) The redis cache instance this rule will be associated to.
  }))
  default     = []
}

variable "subnet_id" {
  type        = string
}

variable "private_dns_zone_id" {
  type        = string
}
