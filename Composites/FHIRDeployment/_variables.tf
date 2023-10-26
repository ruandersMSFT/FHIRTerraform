variable "resource_prefix" {
  type        = string
  default     = null
}

variable "tenant_id" {
  type        = string
}

variable "current_object_id" {
  type        = string
}

variable "aad_function_app_location" {
  type        = string
}

variable "aad_function_app_name" {
  type        = string
}

variable "aad_function_app_resource_group_name" {
  type        = string
}

variable "aad_function_app_private_endpoint_subnet_id" {
  type        = string
}

variable "aad_function_app_private_dns_zone_id" {
  type        = string
}

variable "ampls_scope_name" {
  type        = string
}

variable "apimanagement_name" {
  type        = string
}

variable "apimanagement_resource_group_name" {
  type        = string
}

variable "apimanagement_hostname" {
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

variable "app_configuration_name" {
  type        = string
}

variable "app_configuration_location" {
  type        = string
}

variable "app_configuration_resource_group_name" {
  type        = string
}

variable "app_configuration_private_endpoint_subnet_id" {
  type        = string
}
variable "app_configuration_private_dns_zone_id" {
  type        = string
}

variable "application_insights_location" {
  type        = string
}

variable "application_insights_application_type" {
  type        = string
}

variable "app_configuration_sku" {
  type        = string
}

variable "application_insights_name" {
  type        = string
}

variable "application_insights_resource_group_name" {
  type        = string
}

variable "application_insights_sampling_percentage" {
  type        = string
}

variable "azure_app_client_id" {
  type        = string
}

variable "azure_audience" {
  type        = string
}

variable "event_grid_system_topic_location" {
  type        = string
}

variable "event_grid_system_topic_name" {
  type        = string
}

variable "event_grid_system_topic_resource_group_name" {
  type        = string
}

variable "health_workspace_location" {
  type        = string
}

variable "healthcare_workspace_name" {
  type        = string
}

variable "healthcare_workspace_private_endpoint_subnet_id" {
  type        = string
}

variable "healthcare_workspace_private_dns_zone_id" {
  type        = string
}

variable "healthcare_workspace_resource_group_name" {
  type        = string
}

variable "healthcare_fhir_authentication_audience" {
  type        = string
}

variable "healthcare_fhir_authentication_authority" {
  type        = string
}

variable "healthcare_fhir_configuration_export_storage_account_name" {
  type        = string
}

variable "healthcare_fhir_name" {
  type        = string
}

variable "healthcare_fhir_resource_group_name" {
  type        = string
}

variable "healthcare_fhir_location" {
  type        = string
}

variable "linux_function_app_export_location" {
  type        = string
}

variable "linux_function_app_export_name" {
  type        = string
}

variable "linux_function_app_export_resource_group_name" {
  type        = string
}

variable "linux_function_app_export_private_endpoint_subnet_id" {
  type        = string
}

variable "linux_function_app_export_private_dns_zone_id" {
  type        = string
}

variable "log_analytics_location" {
  type        = string
}

variable "log_analytics_name" {
  type        = string
}

variable "log_analytics_resource_group_name" {
  type        = string
}

variable "log_analytics_retention_in_days" {
  type        = string
}

variable "log_analytics_sku" {
  type        = string
}

variable "keyvault_location" {
  type        = string
}

variable "keyvault_resource_group_name" {
  type        = string
}

variable "keyvault_name" {
  type        = string
}

variable "keyvault_sku_name" {
  type        = string
}

variable "keyvault_private_dns_zone_id" {
  type        = string
  default     = null
}

variable "keyvault_private_endpoint_subnet_id" {
  type        = string
  default     = null
}

variable "process_message_fuction_app_location" {
  type        = string
}

variable "process_message_function_app_name" {
  type        = string
}

variable "process_message_function_app_resource_group_name" {
  type        = string
}

variable "process_message_function_app_private_endpoint_subnet_id" {
  type        = string
}

variable "process_message_function_app_private_dns_zone_id" {
  type        = string
}

variable "redis_cache_capacity" {
  type        = string
}

variable "redis_cache_location" {
  type        = string
}

variable "redis_cache_name" {
  type        = string
}

variable "redis_cache_resource_group_name" {
  type        = string
}

variable "redis_cache_sku" {
  type        = string
}

variable "redis_cache_private_endpoint_subnet_id" {
  type        = string
}

variable "redis_cache_private_dns_zone_id" {
  type        = string
}

variable "servicebusnamespace_capacity" {
  type        = string
}

variable "servicebusnamespace_location" {
  type        = string
}

variable "servicebusnamespace_name" {
  type        = string
}

variable "servicebusnamespace_private_endpoint_subnet_id" {
  type        = string
}

variable "servicebusnamespace_private_dns_zone_id" {
  type        = string
}

variable "servicebusnamespace_resource_group_name" {
  type        = string
}

variable "servicebusnamespace_sku" {
  type        = string
}

variable "service_plan_appserv_name" {
  type        = string
}

variable "service_plan_appserv_os_type" {
  type        = string
}

variable "service_plan_appserv_location" {
  type        = string
}

variable "service_plan_appserv_resource_group_name" {
  type        = string
}

variable "service_plan_appserv_sku_name" {
  type        = string
}

variable "service_plan_dataexport_location" {
  type        = string
}

variable "service_plan_dataexport_name" {
  type        = string
}

variable "service_plan_dataexport_os_type" {
  type        = string
}

variable "service_plan_dataexport_resource_group_name" {
  type        = string
}

variable "service_plan_dataexport_sku_name" {
  type        = string
}

variable "service_plan_processmessage_location" {
  type        = string
}

variable "service_plan_processmessage_name" {
  type        = string
}

variable "service_plan_processmessage_os_type" {
  type        = string
}

variable "service_plan_processmessage_resource_group_name" {
  type        = string
}

variable "service_plan_processmessage_sku_name" {
  type        = string
}

variable "static_site_location" {
  type        = string
}

variable "static_site_name" {
  type        = string
}

variable "static_site_resource_group_name" {
  type        = string
}

variable "static_site_private_endpoint_subnet_id" {
  type        = string
}

variable "static_site_private_dns_zone_id" {
  type        = string
}

variable "storage_FHIRExport_resource_group_name" {
  type        = string
}

variable "storage_FHIRExport_location" {
  type        = string
}

variable "storage_FHIRExport_private_endpoint_subnet_id" {
  type        = string
}

variable "storage_FHIRExport_blob_private_dns_zone_id" {
  type        = string
}

variable "storage_DataLakeExport_blob_private_dns_zone_id" {
  type        = string
}

variable "storage_DataLakeExport_name" {
  type        = string
}

variable "storage_DataLakeExport_resource_group_name" {
  type        = string
}

variable "storage_DataLakeExport_location" {
  type        = string
}

variable "storage_DataLakeExport_private_endpoint_subnet_id" {
  type        = string
}

variable "storage_ProcessMessage_blob_private_dns_zone_id" {
  type        = string
}

variable "storage_ProcessMessage_name" {
  type        = string
}

variable "storage_ProcessMessage_resource_group_name" {
  type        = string
}

variable "storage_ProcessMessage_location" {
  type        = string
}

variable "storage_ProcessMessage_private_endpoint_subnet_id" {
  type        = string
}

variable "storage_DataExport_blob_private_dns_zone_id" {
  type        = string
}

variable "storage_DataExport_name" {
  type        = string
}

variable "storage_DataExport_resource_group_name" {
  type        = string
}

variable "storage_DataExport_location" {
  type        = string
}

variable "storage_DataExport_private_endpoint_subnet_id" {
  type        = string
}

variable "windows_function_app_dataexport_name" {
  type        = string
}

variable "windows_function_app_dataexport_location" {
  type        = string
}

variable "windows_function_app_dataexport_resource_group_name" {
  type        = string
}

variable "windows_function_app_dataexport_private_endpoint_subnet_id" {
  type        = string
}

variable "windows_function_app_dataexport_private_dns_zone_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
