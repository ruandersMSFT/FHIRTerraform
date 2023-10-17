data "azurerm_client_config" "current" {}

locals {
}

import {
  to = azurerm_resource_group.dex_smart
  id = "/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-terraform-rg"
}

import {
  to = module.Network.module.VirtualNetwork.azurerm_virtual_network.this
  id = "/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-terraform-rg/providers/Microsoft.Network/virtualNetworks/cdc-dex-smart-network"
}

resource "azurerm_resource_group" "dex_smart" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "Network" {
  source = "./Composites/Network"

  resource_prefix     = var.resource_prefix
  name                = var.network_name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  depends_on = [azurerm_resource_group.dex_smart]
}

# todo - this needs to be optional / parameterized
module "azuremonitorprivatelinkscope" {
  source = "./Modules/AMPLS"

  name                = var.azure_monitor_private_link_scope_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.resource_group_name
  tags                = var.tags

  depends_on = [azurerm_resource_group.dex_smart]
}

module "PrivateDnsZones" {
  source = "./Composites/PrivateDnsZones"
  count  = var.deploy_private_endpoints ? 1 : 0

  resource_group_name       = var.resource_group_name
  vnet_name                 = module.Network.name
  virtual_network_id        = module.Network.id
  networking_resource_group = module.Network.networking_resource_group

  tags = var.tags

  depends_on = [module.Network]
}

locals {
  aad_function_app_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  aad_function_app_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null

  app_configuration_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  app_configuration_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].appconfig_private_dns_zone_id : null

  keyvault_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].keyvault_private_dns_zone_id : null
  keyvault_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  static_site_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].staticsite_private_dns_zone_id : null
  static_site_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  redis_cache_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].rediscache_private_dns_zone_id : null
  redis_cache_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  #todo should API be removed from this name, separating API vs Healthcare
  healthcareApis_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].healthcareApis_private_dns_zone_id : null
  healthcareApis_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  linux_function_app_export_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  linux_function_app_export_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null

  process_message_function_app_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  process_message_function_app_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null

  storageblob_private_dns_zone_id                   = var.deploy_private_endpoints ? module.PrivateDnsZones[0].storageblob_private_dns_zone_id : null
  storage_FHIRExport_private_endpoint_subnet_id     = var.deploy_private_endpoints ? module.Network.subnet_id : null
  storage_DataLakeExport_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  storage_ProcessMessage_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  storage_DataExport_private_endpoint_subnet_id     = var.deploy_private_endpoints ? module.Network.subnet_id : null

  servicebus_private_dns_zone_id                 = var.deploy_private_endpoints ? module.PrivateDnsZones[0].servicebus_private_dns_zone_id : null
  servicebusnamespace_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  eventgridtopic_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].eventgridtopic_private_dns_zone_id : null
  website_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null

  windows_function_app_dataexport_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null
  windows_function_app_dataexport_private_dns_zone_id        = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null
}

#todo move resource_group_name to input variables separated by type

module "FHIRDeployment" {
  source = "./Composites/FHIRDeployment"

  resource_prefix = var.resource_prefix

  aad_function_app_name                       = var.aad_function_app_name
  aad_function_app_resource_group_name        = var.resource_group_name
  aad_function_app_private_endpoint_subnet_id = local.aad_function_app_private_endpoint_subnet_id
  aad_function_app_private_dns_zone_id        = local.aad_function_app_private_dns_zone_id

  ampls_scope_name = module.azuremonitorprivatelinkscope.name

  apimanagement_name                = var.apimanagement_name
  apimanagement_resource_group_name = var.resource_group_name
  apimanagement_publisher_email     = var.apimanagement_publisher_email
  apimanagement_publisher_name      = var.apimanagement_publisher_name
  apimanagement_sku_name            = var.apimanagement_sku_name

  app_configuration_name                       = var.app_configuration_name
  app_configuration_resource_group_name        = var.resource_group_name
  app_configuration_sku                        = var.app_configuration_sku
  app_configuration_private_endpoint_subnet_id = local.app_configuration_private_endpoint_subnet_id
  app_configuration_private_dns_zone_id        = local.app_configuration_private_dns_zone_id

  application_insights_application_type    = "web"
  application_insights_name                = var.application_insights_name
  application_insights_resource_group_name = var.resource_group_name
  application_insights_sampling_percentage = var.application_insights_sampling_percentage

  azure_app_client_id = var.azure_app_client_id
  azure_audience      = var.azure_audience

  event_grid_system_topic_name                = var.event_grid_system_topic_name
  event_grid_system_topic_resource_group_name = var.resource_group_name

  healthcare_fhir_authentication_audience                   = var.healthcare_fhir_authentication_audience
  healthcare_fhir_authentication_authority                  = var.healthcare_fhir_authentication_authority
  healthcare_fhir_configuration_export_storage_account_name = var.healthcare_fhir_configuration_export_storage_account_name
  healthcare_fhir_name                                      = var.healthcare_fhir_name
  healthcare_fhir_resource_group_name                       = var.resource_group_name

  healthcare_workspace_name                       = var.healthcare_workspace_name
  healthcare_workspace_resource_group_name        = var.resource_group_name
  healthcare_workspace_private_endpoint_subnet_id = local.healthcareApis_private_endpoint_subnet_id
  healthcare_workspace_private_dns_zone_id        = local.healthcareApis_private_dns_zone_id

  keyvault_resource_group_name        = var.resource_group_name
  keyvault_name                       = var.keyvault_name
  keyvault_sku_name                   = var.keyvault_sku_name
  keyvault_private_dns_zone_id        = local.keyvault_private_dns_zone_id
  keyvault_private_endpoint_subnet_id = local.keyvault_private_endpoint_subnet_id

  linux_function_app_export_name                       = var.linux_function_app_export_name
  linux_function_app_export_resource_group_name        = var.resource_group_name
  linux_function_app_export_private_endpoint_subnet_id = local.linux_function_app_export_private_endpoint_subnet_id
  linux_function_app_export_private_dns_zone_id        = local.linux_function_app_export_private_dns_zone_id

  log_analytics_name                = var.log_analytics_name
  log_analytics_resource_group_name = var.resource_group_name
  log_analytics_retention_in_days   = var.log_analytics_retention_in_days
  log_analytics_sku                 = var.log_analytics_sku

  process_message_function_app_name                       = var.process_message_function_app_name
  process_message_function_app_resource_group_name        = var.resource_group_name
  process_message_function_app_private_endpoint_subnet_id = local.process_message_function_app_private_endpoint_subnet_id
  process_message_function_app_private_dns_zone_id        = local.process_message_function_app_private_dns_zone_id

  static_site_name                       = var.static_site_name
  static_site_resource_group_name        = var.resource_group_name
  static_site_private_endpoint_subnet_id = local.static_site_private_endpoint_subnet_id
  static_site_private_dns_zone_id        = local.static_site_private_dns_zone_id

  redis_cache_capacity                   = var.redis_cache_capacity
  redis_cache_name                       = var.redis_cache_name
  redis_cache_resource_group_name        = var.resource_group_name
  redis_cache_private_endpoint_subnet_id = local.redis_cache_private_endpoint_subnet_id
  redis_cache_private_dns_zone_id        = local.redis_cache_private_dns_zone_id
  redis_cache_sku                        = var.redis_cache_sku

  servicebusnamespace_capacity                   = var.servicebusnamespace_capacity
  servicebusnamespace_name                       = var.servicebusnamespace_name
  servicebusnamespace_private_endpoint_subnet_id = local.servicebusnamespace_private_endpoint_subnet_id
  servicebusnamespace_private_dns_zone_id        = local.servicebus_private_dns_zone_id
  servicebusnamespace_resource_group_name        = var.resource_group_name
  servicebusnamespace_sku                        = "Premium"

  service_plan_appserv_name                = "service-appserv"
  service_plan_appserv_os_type             = "Linux"
  service_plan_appserv_resource_group_name = var.resource_group_name
  service_plan_appserv_sku_name            = "EP1"

  service_plan_dataexport_name                = "service-dataexport"
  service_plan_dataexport_os_type             = "Windows"
  service_plan_dataexport_resource_group_name = var.resource_group_name
  service_plan_dataexport_sku_name            = "EP1"

  service_plan_processmessage_name                = "service-processmessage"
  service_plan_processmessage_os_type             = "Windows"
  service_plan_processmessage_resource_group_name = var.resource_group_name
  service_plan_processmessage_sku_name            = "EP1"

  storage_FHIRExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_FHIRExport_private_endpoint_subnet_id = local.storage_FHIRExport_private_endpoint_subnet_id
  storage_FHIRExport_resource_group_name        = var.resource_group_name

  storage_DataExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_DataExport_name                       = var.storage_DataExport_name
  storage_DataExport_private_endpoint_subnet_id = local.storage_DataExport_private_endpoint_subnet_id
  storage_DataExport_resource_group_name        = var.resource_group_name

  storage_DataLakeExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_DataLakeExport_name                       = var.storage_DataLakeExport_name
  storage_DataLakeExport_private_endpoint_subnet_id = local.storage_DataLakeExport_private_endpoint_subnet_id
  storage_DataLakeExport_resource_group_name        = var.resource_group_name

  storage_ProcessMessage_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_ProcessMessage_name                       = var.storage_ProcessMessage_name
  storage_ProcessMessage_private_endpoint_subnet_id = local.storage_ProcessMessage_private_endpoint_subnet_id
  storage_ProcessMessage_resource_group_name        = var.resource_group_name

  windows_function_app_dataexport_name                       = var.windows_function_app_dataexport_name
  windows_function_app_dataexport_resource_group_name        = var.resource_group_name
  windows_function_app_dataexport_private_endpoint_subnet_id = local.windows_function_app_dataexport_private_endpoint_subnet_id
  windows_function_app_dataexport_private_dns_zone_id        = local.windows_function_app_dataexport_private_dns_zone_id

  tags = var.tags

  depends_on = [module.Network]
}
