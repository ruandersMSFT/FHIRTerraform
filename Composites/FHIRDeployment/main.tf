locals {
}

#todo now russell -- Get Secret Permission for data export function app identity
#todo now russell -- Get Secret Permission for process message function app identity
#todo now russell -- Key Values from existing vault
module "KeyVault" {
  source = "./../../Modules/KeyVault"

  resource_prefix     = var.resource_prefix
  name                = var.keyvault_name
  sku_name            = var.keyvault_sku_name
  resource_group_name = var.keyvault_resource_group_name

  subnet_id           = var.keyvault_private_endpoint_subnet_id
  private_dns_zone_id = var.keyvault_private_dns_zone_id

  tags = var.tags
}

/*
module "StaticSite" {
  source = "./../../Modules/StaticSite"

  resource_prefix     = var.resource_prefix
  name                = var.static_site_name
  resource_group_name = var.resource_group_name

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.staticsite_private_dns_zone_id

  tags = local.tags
}

module "ServicePlan1" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = "service-appserv"
  os_type             = "Linux"
  resource_group_name = var.resource_group_name
  sku_name            = "EP1"
  tags                = local.tags
}

module "ServicePlan2" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = "service-dataexport"
  os_type             = "Windows"
  resource_group_name = var.resource_group_name
  sku_name            = "EP1"
}

module "ServicePlan3" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = "service-processmessage"
  os_type             = "Windows"
  resource_group_name = var.resource_group_name
  sku_name            = "EP1"
}

module "RedisCache" {
  source = "./../../Modules/RedisCache"

  resource_prefix     = var.resource_prefix
  capacity            = var.redis_cache_capacity
  name                = var.redis_cache_name
  resource_group_name = var.resource_group_name
  sku                 = var.redis_cache_sku
  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.rediscache_private_dns_zone_id

  tags = local.tags
}

module "AzureHealthCareWorkspace" {
  source = "./../../Modules/Microsoft.HealthcareApis/workspaces"

  resource_prefix     = var.resource_prefix
  name                = var.healthcare_workspace_name
  resource_group_name = var.resource_group_name
  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.healthcareApis_private_dns_zone_id
  
  tags                = local.tags
}

module "AzureHealthCareFHIR" {
  source = "./../../Modules/Microsoft.HealthcareApis/workspaces/FHIRService"

  authentication_audience                   = var.healthcare_fhir_authentication_audience
  authentication_authority                  = "${var.healthcare_fhir_authentication_authority}/${data.azurerm_client_config.current.tenant_id}"
  configuration_export_storage_account_name = var.healthcare_fhir_configuration_export_storage_account_name
  name                                      = var.healthcare_fhir_name
  resource_prefix                           = var.resource_prefix
  resource_group_name                       = var.resource_group_name
  workspace_name                            = module.AzureHealthCareWorkspace.name
  tags                                      = local.tags

  depends_on = [module.AzureHealthCareWorkspace]
}

module "StorageAccount" {
  source = "./../../Modules/Microsoft.Storage/storageAccounts"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storageaccount_name
  resource_group_name      = var.resource_group_name
  subnet_id                = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id      = local.storageblob_private_dns_zone_id

  tags = {
    "hidden-related:/providers/Microsoft.Web/sites/${var.windows_function_app_dataexport_name}" = "empty"
  }
}

module "StorageAccount2" {
  source = "./../../Modules/Microsoft.Storage/storageAccounts"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storageaccount2_name
  resource_group_name      = var.resource_group_name
  subnet_id                = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id      = local.storageblob_private_dns_zone_id

  tags = {
    "hidden-related:/providers/Microsoft.Web/sites/${var.windows_function_app_processmessage_name}" = "empty"
  }
}

module "StorageAccount3" {
  source = "./../../Modules/Microsoft.Storage/storageAccounts"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.healthcare_fhir_configuration_export_storage_account_name
  resource_group_name      = var.resource_group_name
  subnet_id                = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id      = local.storageblob_private_dns_zone_id

  tags                     = local.tags
}

module "StorageAccount4" {
  source = "./../../Modules/Microsoft.Storage/storageAccounts"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storageaccount4_name
  resource_group_name      = var.resource_group_name
  subnet_id                = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id      = local.storageblob_private_dns_zone_id

  tags                     = local.tags
}

module "ServiceBusNamespace" {
  source = "./../../Modules/ServiceBusNamespace"

  resource_prefix     = var.resource_prefix
  name                = var.servicebusnamespace_name
  resource_group_name = var.resource_group_name
  sku                 = "Premium"
  capacity            = var.servicebusnamespace_capacity

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.servicebus_private_dns_zone_id
}

resource "azurerm_servicebus_queue" "fhireventqueue" {
  name         = "fhireventqueue"
  namespace_id = module.ServiceBusNamespace.id

  enable_partitioning = false
}

module "LogAnalytics" {
  source = "./../../Modules/LogAnalytics"

  ampls_scope_name        = module.azuremonitorprivatelinkscope.name
  sku                     = var.log_analytics_sku
  retention_in_days       = var.log_analytics_retention_in_days
  name                    = var.log_analytics_name
  resource_group_name     = var.resource_group_name
  resource_prefix         = var.resource_prefix
  
  tags                    = local.tags
}

module "ApplicationInsights" {
  source = "./../../Modules/ApplicationInsights"

  ampls_scope_name        = module.azuremonitorprivatelinkscope.name
  application_type        = "web"
  name                    = var.application_insights_name
  resource_prefix         = var.resource_prefix
  resource_group_name     = var.resource_group_name
  sampling_percentage     = var.application_insights_sampling_percentage
  tags                    = local.tags
  workspace_id            = module.LogAnalytics.id
}

module "EventGridSystemTopic" {
  source = "./../../Modules/EventGridSystemTopic"

  name                   = var.event_grid_system_topic_name
  resource_prefix        = var.resource_prefix
  resource_group_name    = var.resource_group_name
  source_arm_resource_id = module.AzureHealthCareWorkspace.id
  topic_type             = "Microsoft.HealthcareApis.Workspaces"
}

module "APIManagement" {
  source = "./Composites/ApiManagement"

  name                         = var.apimanagement_name
  publisher_email              = var.apimanagement_publisher_email
  publisher_name               = var.apimanagement_publisher_name
  resource_prefix              = var.resource_prefix
  resource_group_name          = var.resource_group_name
  sku_name                     = var.apimanagement_sku_name
  fhir_service_url             = module.AzureHealthCareFHIR.FhirServerUrl
  static_site_hostname         = module.StaticSite.default_host_name
  aad_function_hostname        = module.LinuxFunctionApp.default_hostname
  azure_audience               = var.azure_audience
  process_message_function_url = "${module.ProcessMessageFunctionApp.default_hosturl}/api/ProcessMessage?code=${module.ProcessMessageFunctionApp.default_function_key}&amp;clientId=default"

  virtual_network_type = "External"
  subnet_id            = module.Network.subnet2_id
}

module "AppConfiguration" {
  source = "./../../Modules/AppConfiguration"

  resource_prefix     = var.resource_prefix
  name                = var.appconfiguration_name
  resource_group_name = var.resource_group_name
  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.appconfig_private_dns_zone_id

  sku = "standard"

  #todo now russell parameters
  keys = {
    "AuthInstance"                          = "https://login.microsoftonline.com/{0}/oauth2/token"
    "AuthScope"                             = "${module.AzureHealthCareFHIR.FhirServerUrl}/.default"
    "AuthTenantId"                          = data.azurerm_client_config.current.tenant_id
    "BaseFhirUrl"                           = "https://${module.APIManagement.hostname}"
    "Export:DatalakeBlobContainer"          = "fhirdatadestination" # todo now russell container needs to get created
    "Export:DatalakeStorageAccount"         = var.storageaccount4_name
    "Export:FlattenExport"                  = "False"
    "Export:UnbundleExport"                 = "False"
    "FunctionProcessMessage:SkipValidation" = "True"
  }
}

resource "azurerm_role_assignment" "appconf_dataowner" {
  scope                = module.AppConfiguration.id
  role_definition_name = "App Configuration Data Owner"
  principal_id         = data.azurerm_client_config.current.object_id
}

data "azurerm_key_vault" "existing" {
  name                = "${var.resource_prefix}${var.keyvault_name}"
  resource_group_name = var.resource_group_name
}

data "azurerm_key_vault_secret" "ClientId" {
  name         = "ClientId"
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "ClientId" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "ClientId"
  type                   = "vault"
  vault_key_reference    = data.azurerm_key_vault_secret.ClientId.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}

data "azurerm_key_vault_secret" "ClientSecret" {
  name         = "ClientSecret"
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "ClientSecret" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "ClientSecret"
  type                   = "vault"
  vault_key_reference    = data.azurerm_key_vault_secret.ClientSecret.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}

data "azurerm_key_vault_secret" "edav_clientid" {
  name         = "edav-clientid"
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "Export_EDAVClientId" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "Export:EDAVClientId"
  type                   = "vault"
  vault_key_reference    = data.azurerm_key_vault_secret.edav_clientid.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}

data "azurerm_key_vault_secret" "edav_clientsecret" {
  name         = "edav-clientsecret"
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "Export_EDAVClientSecret" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "Export:EDAVClientSecret"
  type                   = "vault"
  vault_key_reference    = data.azurerm_key_vault_secret.edav_clientsecret.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}

data "azurerm_key_vault_secret" "edav_tenantid" {
  name         = "edav-tenantid"
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "Export_EDAVTenatId" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "Export:EDAVTenatId"
  type                   = "vault"
  vault_key_reference    = data.azurerm_key_vault_secret.edav_tenantid.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}

resource "azurerm_key_vault_secret" "FhirServiceBusConnectionString" {
  name         = "FhirServiceBusConnectionString"
  value        = module.ServiceBusNamespace.default_primary_connection_string
  key_vault_id = data.azurerm_key_vault.existing.id
}

resource "azurerm_app_configuration_key" "FhirServiceBusConnectionString" {
  configuration_store_id = module.AppConfiguration.id
  key                    = "FhirServiceBusConnectionString"
  type                   = "vault"
  vault_key_reference    = azurerm_key_vault_secret.FhirServiceBusConnectionString.versionless_id

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}


module "LinuxFunctionApp" {
  source = "./../../Modules/FunctionAppLinux"

  name                = var.linux_fuction_app_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.resource_group_name
  app_settings = {
    AZURE_APPINSIGHTS_INSTRUMENTATIONKEY        = module.ApplicationInsights.instrumentation_key
    AZURE_APPLICATIONINSIGHTS_CONNECTION_STRING = module.ApplicationInsights.connection_string
    AZURE_ApiManagementHostName                 = module.APIManagement.hostname
    AZURE_Audience                              = var.azure_audience
    AZURE_BackendServiceKeyVaultStore           = module.KeyVault.name
    AZURE_CacheConnectionString                 = module.RedisCache.primary_connection_string
    AZURE_ContextAppClientId                    = var.azure_contextappclientid
    AZURE_Debug                                 = "true"
    AZURE_FhirServerUrl                         = module.AzureHealthCareFHIR.FhirServerUrl
    AZURE_TenantId                              = data.azurerm_client_config.current.tenant_id
    ENABLE_ORYX_BUILD                           = "true"
    SCM_DO_BUILD_DURING_DEPLOYMENT              = "false"
  }
  service_plan_id                        = module.ServicePlan1.id
  storage_account_access_key             = module.StorageAccount3.primary_access_key
  storage_account_name                   = module.StorageAccount3.name
  allowed_origins                        = [module.StaticSite.default_host_url]
  application_insights_connection_string = module.ApplicationInsights.connection_string
  application_insights_key               = module.ApplicationInsights.instrumentation_key
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = {
    AppID                                            = "fhir-smart-onc-g10-sample"
    azd-env-name                                     = "cdc-dex-smart-dev"
    azd-service-name                                 = "auth"
    "hidden-link: /app-insights-instrumentation-key" = module.ApplicationInsights.instrumentation_key
    "hidden-link: /app-insights-resource-id"         = module.ApplicationInsights.id
  }

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.website_private_dns_zone_id
}

module "LinuxFunctionApp2" {
  source = "./../../Modules/FunctionAppLinux"

  name                = var.linux_function_app_2_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.resource_group_name
  app_settings = {
    AZURE_APPINSIGHTS_INSTRUMENTATIONKEY        = module.ApplicationInsights.instrumentation_key
    AZURE_APPLICATIONINSIGHTS_CONNECTION_STRING = module.ApplicationInsights.connection_string
    AZURE_ApiManagementHostName                 = module.APIManagement.hostname
    AZURE_Debug                                 = "true"
    AZURE_ExportStorageAccountUrl               = module.StorageAccount3.primary_blob_endpoint
    AZURE_FhirServerUrl                         = module.AzureHealthCareFHIR.FhirServerUrl
    AZURE_TenantId                              = data.azurerm_client_config.current.tenant_id
    ENABLE_ORYX_BUILD                           = "true"
    SCM_DO_BUILD_DURING_DEPLOYMENT              = "false"
  }
  service_plan_id                        = module.ServicePlan1.id
  storage_account_access_key             = module.StorageAccount3.primary_access_key
  storage_account_name                   = module.StorageAccount3.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  application_insights_key               = module.ApplicationInsights.instrumentation_key
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = local.tags

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.website_private_dns_zone_id
}

module "DataExportFunctionApp" {
  source = "./../../Modules/FunctionAppWindows"

  name                                   = var.windows_function_app_dataexport_name
  resource_prefix                        = var.resource_prefix
  resource_group_name                    = var.resource_group_name
  service_plan_id                        = module.ServicePlan2.id
  storage_account_access_key             = module.StorageAccount.primary_access_key
  storage_account_name                   = module.StorageAccount.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = {
    #todo now russell
    "hidden-related:/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-dev-rg/providers/Microsoft.Web/serverFarms/${var.windows_function_app_dataexport_name}" = "empty"
  }

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.website_private_dns_zone_id
}

module "ProcessMessageFunctionApp" {
  source = "./../../Modules/FunctionAppWindows"

  name                                   = var.windows_function_app_processmessage_name
  resource_prefix                        = var.resource_prefix
  resource_group_name                    = var.resource_group_name
  service_plan_id                        = module.ServicePlan3.id
  storage_account_access_key             = module.StorageAccount2.primary_access_key
  storage_account_name                   = module.StorageAccount2.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = {
    #todo now russell
    "hidden-related:/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-dev-rg/providers/Microsoft.Web/serverFarms/${var.windows_function_app_processmessage_name}" = "empty"
  }

  subnet_id           = var.deploy_private_endpoints ? module.Network.subnet_id : null
  private_dns_zone_id = local.website_private_dns_zone_id
}

/*
resource "azurerm_monitor_smart_detector_alert_rule" "res-68" {
  description         = "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
  detector_type       = "FailureAnomaliesDetector"
  frequency           = "PT1M"
  name                = "Failure Anomalies - cdcdexsmartdev-appins"
  resource_group_name = var.resource_group_name
  scope_resource_ids  = ["/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourcegroups/cdc-dex-smart-dev-rg/providers/microsoft.insights/components/cdcdexsmartdev-appins"]
  severity            = "Sev3"
  action_group {
    ids = ["/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourcegroups/default-applicationinsights-eastus/providers/microsoft.insights/actionGroups/application insights smart detection"]
  }
}

resource "azurerm_monitor_smart_detector_alert_rule" "res-69" {
  description         = "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
  detector_type       = "FailureAnomaliesDetector"
  frequency           = "PT1M"
  name                = "Failure Anomalies - fhir-service-SMART-ai"
  resource_group_name = var.resource_group_name
  scope_resource_ids  = ["/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourcegroups/cdc-dex-smart-dev-rg/providers/microsoft.insights/components/fhir-service-smart-ai"]
  severity            = "Sev3"
  action_group {
    ids = ["/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourcegroups/default-applicationinsights-eastus/providers/microsoft.insights/actionGroups/application insights smart detection"]
  }
}

*/