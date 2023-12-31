locals {
}

module "Network" {
  source = "./Composites/Network"

  resource_prefix     = var.resource_prefix
  name                = var.network_name
  resource_group_name = data.azurerm_resource_group.mgt.name
  tags                = var.tags
}

module "azuremonitorprivatelinkscope" {
  source = "./Modules/AMPLS"

  name                = var.azure_monitor_private_link_scope_name
  resource_prefix     = var.resource_prefix
  resource_group_name = data.azurerm_resource_group.mgt.name
  tags                = var.tags
}

module "PrivateDnsZones" {
  source = "./Composites/PrivateDnsZones"
  count  = var.deploy_private_endpoints ? 1 : 0

  resource_group_name       = data.azurerm_resource_group.mgt.name
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

module "FHIRDeployment" {
  source = "./Composites/FHIRDeployment"

  resource_prefix   = var.resource_prefix
  tenant_id         = data.azurerm_client_config.current.tenant_id
  current_object_id = data.azurerm_client_config.current.object_id

  aad_function_app_location                   = data.azurerm_resource_group.mgt.location
  aad_function_app_name                       = var.aad_function_app_name
  aad_function_app_resource_group_name        = data.azurerm_resource_group.mgt.name
  aad_function_app_private_endpoint_subnet_id = local.aad_function_app_private_endpoint_subnet_id
  aad_function_app_private_dns_zone_id        = local.aad_function_app_private_dns_zone_id

  ampls_scope_name = module.azuremonitorprivatelinkscope.name

  apimanagement_name                = var.apimanagement_name
  apimanagement_resource_group_name = data.azurerm_resource_group.mgt.name
  apimanagement_publisher_email     = var.apimanagement_publisher_email
  apimanagement_publisher_name      = var.apimanagement_publisher_name
  apimanagement_sku_name            = var.apimanagement_sku_name
  apimanagement_hostname            = var.apimanagement_hostname

  app_configuration_name                       = var.app_configuration_name
  app_configuration_resource_group_name        = data.azurerm_resource_group.mgt.name
  app_configuration_location                   = data.azurerm_resource_group.mgt.location
  app_configuration_sku                        = var.app_configuration_sku
  app_configuration_private_endpoint_subnet_id = local.app_configuration_private_endpoint_subnet_id
  app_configuration_private_dns_zone_id        = local.app_configuration_private_dns_zone_id

  application_insights_location            = data.azurerm_resource_group.mgt.location
  application_insights_application_type    = "web"
  application_insights_name                = var.application_insights_name
  application_insights_resource_group_name = data.azurerm_resource_group.mgt.name
  application_insights_sampling_percentage = var.application_insights_sampling_percentage

  azure_app_client_id = var.azure_app_client_id
  azure_audience      = var.azure_audience

  event_grid_system_topic_location            = data.azurerm_resource_group.mgt.location
  event_grid_system_topic_name                = var.event_grid_system_topic_name
  event_grid_system_topic_resource_group_name = data.azurerm_resource_group.mgt.name

  healthcare_fhir_authentication_audience                   = var.healthcare_fhir_authentication_audience
  healthcare_fhir_authentication_authority                  = var.healthcare_fhir_authentication_authority
  healthcare_fhir_configuration_export_storage_account_name = var.healthcare_fhir_configuration_export_storage_account_name
  healthcare_fhir_name                                      = var.healthcare_fhir_name
  healthcare_fhir_resource_group_name                       = data.azurerm_resource_group.mgt.name
  healthcare_fhir_location                                  = data.azurerm_resource_group.mgt.location

  health_workspace_location                       = data.azurerm_resource_group.mgt.location
  healthcare_workspace_name                       = var.healthcare_workspace_name
  healthcare_workspace_resource_group_name        = data.azurerm_resource_group.mgt.name
  healthcare_workspace_private_endpoint_subnet_id = local.healthcareApis_private_endpoint_subnet_id
  healthcare_workspace_private_dns_zone_id        = local.healthcareApis_private_dns_zone_id

  keyvault_resource_group_name        = data.azurerm_resource_group.mgt.name
  keyvault_name                       = var.keyvault_name
  keyvault_location                   = data.azurerm_resource_group.mgt.location
  keyvault_sku_name                   = var.keyvault_sku_name
  keyvault_private_dns_zone_id        = local.keyvault_private_dns_zone_id
  keyvault_private_endpoint_subnet_id = local.keyvault_private_endpoint_subnet_id

  linux_function_app_export_location                   = data.azurerm_resource_group.mgt.location
  linux_function_app_export_name                       = var.linux_function_app_export_name
  linux_function_app_export_resource_group_name        = data.azurerm_resource_group.mgt.name
  linux_function_app_export_private_endpoint_subnet_id = local.linux_function_app_export_private_endpoint_subnet_id
  linux_function_app_export_private_dns_zone_id        = local.linux_function_app_export_private_dns_zone_id

  log_analytics_location            = data.azurerm_resource_group.mgt.location
  log_analytics_name                = var.log_analytics_name
  log_analytics_resource_group_name = data.azurerm_resource_group.mgt.name
  log_analytics_retention_in_days   = var.log_analytics_retention_in_days
  log_analytics_sku                 = var.log_analytics_sku

  process_message_fuction_app_location                    = data.azurerm_resource_group.mgt.location
  process_message_function_app_name                       = var.process_message_function_app_name
  process_message_function_app_resource_group_name        = data.azurerm_resource_group.mgt.name
  process_message_function_app_private_endpoint_subnet_id = local.process_message_function_app_private_endpoint_subnet_id
  process_message_function_app_private_dns_zone_id        = local.process_message_function_app_private_dns_zone_id

  redis_cache_capacity                   = var.redis_cache_capacity
  redis_cache_location                   = data.azurerm_resource_group.mgt.location
  redis_cache_name                       = var.redis_cache_name
  redis_cache_resource_group_name        = data.azurerm_resource_group.mgt.name
  redis_cache_private_endpoint_subnet_id = local.redis_cache_private_endpoint_subnet_id
  redis_cache_private_dns_zone_id        = local.redis_cache_private_dns_zone_id
  redis_cache_sku                        = var.redis_cache_sku

  servicebusnamespace_location                   = data.azurerm_resource_group.mgt.location
  servicebusnamespace_capacity                   = var.servicebusnamespace_capacity
  servicebusnamespace_name                       = var.servicebusnamespace_name
  servicebusnamespace_private_endpoint_subnet_id = local.servicebusnamespace_private_endpoint_subnet_id
  servicebusnamespace_private_dns_zone_id        = local.servicebus_private_dns_zone_id
  servicebusnamespace_resource_group_name        = data.azurerm_resource_group.mgt.name
  servicebusnamespace_sku                        = "Premium"

  service_plan_appserv_location            = data.azurerm_resource_group.mgt.location
  service_plan_appserv_name                = "service-appserv"
  service_plan_appserv_os_type             = "Linux"
  service_plan_appserv_resource_group_name = data.azurerm_resource_group.mgt.name
  service_plan_appserv_sku_name            = "EP1"

  service_plan_dataexport_location            = data.azurerm_resource_group.mgt.location
  service_plan_dataexport_name                = "service-dataexport"
  service_plan_dataexport_os_type             = "Windows"
  service_plan_dataexport_resource_group_name = data.azurerm_resource_group.mgt.name
  service_plan_dataexport_sku_name            = "EP1"

  service_plan_processmessage_location            = data.azurerm_resource_group.mgt.location
  service_plan_processmessage_name                = "service-processmessage"
  service_plan_processmessage_os_type             = "Windows"
  service_plan_processmessage_resource_group_name = data.azurerm_resource_group.mgt.name
  service_plan_processmessage_sku_name            = "EP1"

  static_site_name                       = var.static_site_name
  static_site_location                   = data.azurerm_resource_group.mgt.location
  static_site_resource_group_name        = data.azurerm_resource_group.mgt.name
  static_site_private_endpoint_subnet_id = local.static_site_private_endpoint_subnet_id
  static_site_private_dns_zone_id        = local.static_site_private_dns_zone_id

  storage_FHIRExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_FHIRExport_private_endpoint_subnet_id = local.storage_FHIRExport_private_endpoint_subnet_id
  storage_FHIRExport_resource_group_name        = data.azurerm_resource_group.mgt.name
  storage_FHIRExport_location                   = data.azurerm_resource_group.mgt.location

  storage_DataExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_DataExport_name                       = var.storage_DataExport_name
  storage_DataExport_private_endpoint_subnet_id = local.storage_DataExport_private_endpoint_subnet_id
  storage_DataExport_resource_group_name        = data.azurerm_resource_group.mgt.name
  storage_DataExport_location                   = data.azurerm_resource_group.mgt.location

  storage_DataLakeExport_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_DataLakeExport_name                       = var.storage_DataLakeExport_name
  storage_DataLakeExport_private_endpoint_subnet_id = local.storage_DataLakeExport_private_endpoint_subnet_id
  storage_DataLakeExport_resource_group_name        = data.azurerm_resource_group.mgt.name
  storage_DataLakeExport_location                   = data.azurerm_resource_group.mgt.location

  storage_ProcessMessage_blob_private_dns_zone_id   = local.storageblob_private_dns_zone_id
  storage_ProcessMessage_name                       = var.storage_ProcessMessage_name
  storage_ProcessMessage_private_endpoint_subnet_id = local.storage_ProcessMessage_private_endpoint_subnet_id
  storage_ProcessMessage_resource_group_name        = data.azurerm_resource_group.mgt.name
  storage_ProcessMessage_location                   = data.azurerm_resource_group.mgt.location

  windows_function_app_dataexport_name                       = var.windows_function_app_dataexport_name
  windows_function_app_dataexport_resource_group_name        = data.azurerm_resource_group.mgt.name
  windows_function_app_dataexport_location                   = data.azurerm_resource_group.mgt.location
  windows_function_app_dataexport_private_endpoint_subnet_id = local.windows_function_app_dataexport_private_endpoint_subnet_id
  windows_function_app_dataexport_private_dns_zone_id        = local.windows_function_app_dataexport_private_dns_zone_id

  tags = var.tags

  depends_on = [module.Network]
}

module "APIMDeployment" {
  source = "./Composites/APIMDeployment"

  tenant_id = data.azurerm_client_config.current.tenant_id

  name                         = var.apimanagement_name
  publisher_email              = var.apimanagement_publisher_email
  publisher_name               = var.apimanagement_publisher_name
  resource_prefix              = var.resource_prefix
  resource_group_name          = data.azurerm_resource_group.mgt.name
  sku_name                     = var.apimanagement_sku_name
  fhir_service_url             = module.FHIRDeployment.FhirServerUrl
  static_site_hostname         = module.FHIRDeployment.static_site_default_host_name
  aad_function_hostname        = module.FHIRDeployment.aad_function_app_defalt_hostname
  azure_audience               = var.azure_audience
  process_message_function_url = "${module.FHIRDeployment.processmessage_function_app_defalt_hostname}/api/ProcessMessage?code=${module.FHIRDeployment.processmessage_function_app_defalt_function_key}&amp;clientId=default"

  subnet_id = null

  depends_on = [module.Network]
}
