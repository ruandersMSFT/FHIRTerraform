variable "resource_prefix" {
  type        = string
  description = ""
  default     = null
}

variable "aad_function_app_name" {
  type        = string
  description = ""
}

variable "aad_function_app_resource_group_name" {
  type        = string
  description = ""
}

variable "aad_function_app_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "aad_function_app_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "ampls_scope_name" {
  type        = string
  description = ""
}

variable "apimanagement_name" {
  type        = string
  description = ""
}
variable "apimanagement_resource_group_name" {
  type        = string
  description = ""
}

variable "apimanagement_hostname" {
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

variable "app_configuration_name" {
  type        = string
  description = ""
}

variable "app_configuration_resource_group_name" {
  type        = string
  description = ""
}

variable "app_configuration_private_endpoint_subnet_id" {
  type        = string
  description = ""
}
variable "app_configuration_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "application_insights_application_type" {
  type        = string
  description = ""
}

variable "app_configuration_sku" {
  type        = string
  description = ""
}

variable "application_insights_name" {
  type        = string
  description = ""
}

variable "application_insights_resource_group_name" {
  type        = string
  description = ""
}

variable "application_insights_sampling_percentage" {
  type        = string
  description = ""
}

variable "azure_app_client_id" {
  type        = string
  description = ""
}

variable "azure_audience" {
  type        = string
  description = ""
}

variable "event_grid_system_topic_name" {
  type        = string
  description = ""
}

variable "event_grid_system_topic_resource_group_name" {
  type        = string
  description = ""
}

variable "healthcare_workspace_name" {
  type        = string
  description = ""
}

variable "healthcare_workspace_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "healthcare_workspace_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "healthcare_workspace_resource_group_name" {
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

variable "healthcare_fhir_configuration_export_storage_account_name" {
  type        = string
  description = ""
}

variable "healthcare_fhir_name" {
  type        = string
  description = ""
}

variable "healthcare_fhir_resource_group_name" {
  type        = string
  description = ""
}

variable "linux_function_app_export_name" {
  type        = string
  description = ""
}

variable "linux_function_app_export_resource_group_name" {
  type        = string
  description = ""
}

variable "linux_function_app_export_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "linux_function_app_export_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "log_analytics_name" {
  type        = string
  description = ""
}

variable "log_analytics_resource_group_name" {
  type        = string
  description = ""
}

variable "log_analytics_retention_in_days" {
  type        = string
  description = ""
}

variable "log_analytics_sku" {
  type        = string
  description = ""
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
  default     = null
}

variable "keyvault_private_endpoint_subnet_id" {
  type        = string
  description = ""
  default     = null
}

variable "process_message_function_app_name" {
  type        = string
  description = ""
}

variable "process_message_function_app_resource_group_name" {
  type        = string
  description = ""
}

variable "process_message_function_app_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "process_message_function_app_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "servicebusnamespace_capacity" {
  type        = string
  description = ""
}

variable "servicebusnamespace_name" {
  type        = string
  description = ""
}

variable "servicebusnamespace_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "servicebusnamespace_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "servicebusnamespace_resource_group_name" {
  type        = string
  description = ""
}

variable "servicebusnamespace_sku" {
  type        = string
  description = ""
}

variable "static_site_name" {
  type        = string
  description = ""
}

variable "static_site_resource_group_name" {
  type        = string
  description = ""
}

variable "static_site_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "static_site_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "storage_FHIRExport_resource_group_name" {
  type        = string
  description = ""
}

variable "storage_FHIRExport_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "storage_FHIRExport_blob_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "storage_DataLakeExport_blob_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "storage_DataLakeExport_name" {
  type        = string
  description = ""
}

variable "storage_DataLakeExport_resource_group_name" {
  type        = string
  description = ""
}

variable "storage_DataLakeExport_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "storage_ProcessMessage_blob_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "storage_ProcessMessage_name" {
  type        = string
  description = ""
}

variable "storage_ProcessMessage_resource_group_name" {
  type        = string
  description = ""
}

variable "storage_ProcessMessage_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "storage_DataExport_blob_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "storage_DataExport_name" {
  type        = string
  description = ""
}

variable "storage_DataExport_resource_group_name" {
  type        = string
  description = ""
}

variable "storage_DataExport_private_endpoint_subnet_id" {
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

variable "redis_cache_resource_group_name" {
  type        = string
  description = ""
}

variable "redis_cache_sku" {
  type        = string
  description = ""
}

variable "redis_cache_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "redis_cache_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "service_plan_appserv_name" {
  type        = string
  description = ""
}

variable "service_plan_appserv_os_type" {
  type        = string
  description = ""
}

variable "service_plan_appserv_resource_group_name" {
  type        = string
  description = ""
}

variable "service_plan_appserv_sku_name" {
  type        = string
  description = ""
}

variable "service_plan_dataexport_name" {
  type        = string
  description = ""
}

variable "service_plan_dataexport_os_type" {
  type        = string
  description = ""
}

variable "service_plan_dataexport_resource_group_name" {
  type        = string
  description = ""
}

variable "service_plan_dataexport_sku_name" {
  type        = string
  description = ""
}

variable "service_plan_processmessage_name" {
  type        = string
  description = ""
}

variable "service_plan_processmessage_os_type" {
  type        = string
  description = ""
}

variable "service_plan_processmessage_resource_group_name" {
  type        = string
  description = ""
}

variable "service_plan_processmessage_sku_name" {
  type        = string
  description = ""
}

variable "windows_function_app_dataexport_name" {
  type        = string
  description = ""
}

variable "windows_function_app_dataexport_resource_group_name" {
  type        = string
  description = ""
}

variable "windows_function_app_dataexport_private_endpoint_subnet_id" {
  type        = string
  description = ""
}

variable "windows_function_app_dataexport_private_dns_zone_id" {
  type        = string
  description = ""
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}
