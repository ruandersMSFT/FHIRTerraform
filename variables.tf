variable "deploy_private_endpoints" {
  type        = bool
}

variable "resource_prefix" {
  type        = string
}

variable "aad_function_app_name" {
  type        = string
}

variable "app_configuration_name" {
  type        = string
}

variable "app_configuration_sku" {
  type        = string
}

variable "network_name" {
  type        = string
}

variable "keyvault_name" {
  type        = string
}

variable "keyvault_sku_name" {
  type        = string
}

variable "static_site_name" {
  type        = string
}

variable "redis_cache_capacity" {
  type        = string
}

variable "redis_cache_name" {
  type        = string
}

variable "redis_cache_sku" {
  type        = string
}

variable "healthcare_workspace_name" {
  type        = string
}

variable "healthcare_fhir_authentication_audience" {
  type        = string
}

variable "healthcare_fhir_authentication_authority" {
  type        = string
}

variable "healthcare_fhir_name" {
  type        = string
}

variable "healthcare_fhir_configuration_export_storage_account_name" {
  type        = string
}

variable "storage_DataExport_name" {
  type        = string
}

variable "storage_ProcessMessage_name" {
  type        = string
}

variable "storage_DataLakeExport_name" {
  type        = string
}

variable "servicebusnamespace_name" {
  type        = string
}

variable "servicebusnamespace_capacity" {
  type        = string
}

variable "windows_function_app_dataexport_name" {
  type        = string
}

variable "log_analytics_sku" {
  type        = string
}

variable "log_analytics_retention_in_days" {
  type        = string
}

variable "log_analytics_name" {
  type        = string
}

variable "azure_monitor_private_link_scope_name" {
  type        = string
}

variable "application_insights_name" {
  type        = string
}

variable "application_insights_sampling_percentage" {
  type        = number
}

variable "event_grid_system_topic_name" {
  type        = string
}

variable "apimanagement_name" {
  type        = string
}

variable "apimanagement_publisher_email" {
  type        = string
}

variable "apimanagement_publisher_name" {
  type        = string
}

variable "apimanagement_sku_name" {
  type        = string
}

variable "apimanagement_hostname" {
  type        = string
}

variable "azure_audience" {
  type        = string
}

variable "azure_app_client_id" {
  type        = string
}

variable "linux_function_app_export_name" {
  type        = string
}

variable "process_message_function_app_name" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
