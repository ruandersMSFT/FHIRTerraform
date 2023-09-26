variable "resource_group_name" {
  type        = string
  description = ""
}

variable "resource_group_location" {
  type        = string
  description = ""
}

variable "deploy_private_endpoints" {
  type        = bool
  description = ""
}

variable "resource_prefix" {
  type        = string
  description = ""
}

variable "aad_function_app_name" {
  type        = string
  description = ""
}

variable "app_configuration_name" {
  type        = string
  description = ""
}

variable "app_configuration_sku" {
  type        = string
  description = ""
}

variable "network_name" {
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

variable "static_site_name" {
  type        = string
  description = ""
}

variable "redis_cache_capacity" {
  type        = string
  description = ""
}


variable "redis_cache_name" {
  type        = string
  description = ""
}

variable "redis_cache_sku" {
  type        = string
  description = ""
}

variable "healthcare_workspace_name" {
  type        = string
  description = ""
}

variable "healthcare_fhir_authentication_audience" {
  type        = string
  description = ""
}

variable "healthcare_fhir_authentication_authority" {
  type        = string
  description = ""
}

variable "healthcare_fhir_name" {
  type        = string
  description = ""
}

variable "healthcare_fhir_configuration_export_storage_account_name" {
  type        = string
  description = ""
}

variable "storage_DataExport_name" {
  type        = string
  description = ""
}

variable "storage_ProcessMessage_name" {
  type        = string
  description = ""
}

variable "storage_DataLakeExport_name" {
  type        = string
  description = ""
}

variable "servicebusnamespace_name" {
  type        = string
  description = ""
}

variable "servicebusnamespace_capacity" {
  type        = string
  description = ""
}

variable "windows_function_app_dataexport_name" {
  type        = string
  description = ""
}

variable "log_analytics_sku" {
  type        = string
  description = ""
}

variable "log_analytics_retention_in_days" {
  type        = string
  description = ""
}

variable "log_analytics_name" {
  type        = string
  description = ""
}

variable "azure_monitor_private_link_scope_name" {
  type        = string
  description = ""
}

variable "application_insights_name" {
  type        = string
  description = ""
}

variable "application_insights_sampling_percentage" {
  type        = number
  description = ""
}

variable "event_grid_system_topic_name" {
  type        = string
  description = ""
}

variable "apimanagement_name" {
  type        = string
  description = ""
}

variable "apimanagement_publisher_email" {
  type        = string
  description = ""
}

variable "apimanagement_publisher_name" {
  type        = string
  description = ""
}

variable "apimanagement_sku_name" {
  type        = string
  description = ""
}

variable "azure_audience" {
  type        = string
  description = ""
}

variable "azure_contextappclientid" {
  type        = string
  description = ""
}

variable "linux_function_app_2_name" {
  type        = string
  description = ""
}

variable "process_message_function_app_name" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
