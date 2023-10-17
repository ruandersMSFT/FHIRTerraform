locals {
}

data "azurerm_client_config" "current" {}

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

# Current User Key Vault Permissions
resource "azurerm_key_vault_access_policy" "CurrentUser" {
  key_vault_id = module.KeyVault.id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = data.azurerm_client_config.current.object_id

  key_permissions = [
    "Create",
    "Get",
  ]

  secret_permissions = [
    "Set",
    "List",
    "Get",
    "Delete",
    "Purge",
    "Recover"
  ]
}

# Azure Application Configuration permission to get secrets
resource "azurerm_key_vault_access_policy" "AppConfig" {
  key_vault_id = module.KeyVault.id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.AppConfiguration.principal_id

  secret_permissions = [
    "Get"
  ]
}

# Data Export Function Application permission to get secrets
resource "azurerm_key_vault_access_policy" "DataExportFunctionApp" {
  key_vault_id = module.KeyVault.id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.DataExportFunctionApp.principal_id

  secret_permissions = [
    "Get"
  ]
}

# Process Message Function Application permission to get secrets
resource "azurerm_key_vault_access_policy" "ProcessMessageFunctionApp" {
  key_vault_id = module.KeyVault.id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.ProcessMessageFunctionApp.principal_id

  secret_permissions = [
    "Get"
  ]
}

module "StaticSite" {
  source = "./../../Modules/StaticSite"

  resource_prefix     = var.resource_prefix
  name                = var.static_site_name
  resource_group_name = var.static_site_resource_group_name

  subnet_id           = var.static_site_private_endpoint_subnet_id
  private_dns_zone_id = var.static_site_private_dns_zone_id

  tags = var.tags
}

module "RedisCache" {
  source = "./../../Modules/RedisCache"

  resource_prefix     = var.resource_prefix
  capacity            = var.redis_cache_capacity
  name                = var.redis_cache_name
  resource_group_name = var.redis_cache_resource_group_name
  sku                 = var.redis_cache_sku
  subnet_id           = var.redis_cache_private_endpoint_subnet_id
  private_dns_zone_id = var.redis_cache_private_dns_zone_id

  tags = var.tags
}


module "ServicePlanAppServ" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = var.service_plan_appserv_name
  os_type             = var.service_plan_appserv_os_type
  resource_group_name = var.service_plan_appserv_resource_group_name
  sku_name            = var.service_plan_appserv_sku_name
  tags                = var.tags
}

module "ServicePlanDataExport" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = var.service_plan_dataexport_name
  os_type             = var.service_plan_dataexport_os_type
  resource_group_name = var.service_plan_dataexport_resource_group_name
  sku_name            = var.service_plan_dataexport_sku_name
  tags                = var.tags
}

module "ServicePlanProcessMessage" {
  source = "./../../Modules/ServicePlan"

  resource_prefix     = var.resource_prefix
  name                = var.service_plan_processmessage_name
  os_type             = var.service_plan_processmessage_os_type
  resource_group_name = var.service_plan_processmessage_resource_group_name
  sku_name            = var.service_plan_processmessage_sku_name
  tags                = var.tags
}

module "AzureHealthCareWorkspace" {
  source = "./../../Modules/HealthCareWorkspace"

  resource_prefix     = var.resource_prefix
  name                = var.healthcare_workspace_name
  resource_group_name = var.healthcare_workspace_resource_group_name

  subnet_id           = var.healthcare_workspace_private_endpoint_subnet_id
  private_dns_zone_id = var.healthcare_workspace_private_dns_zone_id

  tags                = var.tags
}

#todo variable should reference blob
module "StorageAccountFHIRExport" {
  source = "./../../Modules/StorageAccount"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.healthcare_fhir_configuration_export_storage_account_name
  resource_group_name      = var.storage_FHIRExport_resource_group_name
  subnet_id                = var.storage_FHIRExport_private_endpoint_subnet_id
  private_dns_zone_id      = var.storage_FHIRExport_blob_private_dns_zone_id

  tags                     = var.tags
}

module "AzureHealthCareFHIR" {
  source = "./../../Modules/HealthCareFHIR"

  authentication_audience                   = var.healthcare_fhir_authentication_audience
  authentication_authority                  = "${var.healthcare_fhir_authentication_authority}/${data.azurerm_client_config.current.tenant_id}"
  configuration_export_storage_account_name = module.StorageAccountFHIRExport.name
  name                                      = var.healthcare_fhir_name
  resource_prefix                           = var.resource_prefix
  resource_group_name                       = var.healthcare_fhir_resource_group_name
  workspace_name                            = module.AzureHealthCareWorkspace.name
  tags                                      = var.tags

  depends_on = [module.AzureHealthCareWorkspace]
}

module "StorageAccountDataExport" {
  source = "./../../Modules/StorageAccount"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storage_DataExport_name
  resource_group_name      = var.storage_DataExport_resource_group_name
  subnet_id                = var.storage_DataExport_private_endpoint_subnet_id
  private_dns_zone_id      = var.storage_DataExport_blob_private_dns_zone_id

tags = {}
/*
  tags = {
    "hidden-related:/providers/Microsoft.Web/sites/${var.windows_function_app_dataexport_name}" = "empty"
  }
  */
}

module "StorageAccountProcessMessage" {
  source = "./../../Modules/StorageAccount"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storage_ProcessMessage_name
  resource_group_name      = var.storage_ProcessMessage_resource_group_name
  subnet_id                = var.storage_ProcessMessage_private_endpoint_subnet_id
  private_dns_zone_id      = var.storage_ProcessMessage_blob_private_dns_zone_id

tags = {}
/*
  tags = {
    "hidden-related:/providers/Microsoft.Web/sites/${var.process_message_function_app_name}" = "empty"
  }
  */
}

module "StorageAccountDataLakeExport" {
  source = "./../../Modules/StorageAccount"

  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  assign_identity          = false
  resource_prefix          = var.resource_prefix
  name                     = var.storage_DataLakeExport_name
  resource_group_name      = var.storage_DataLakeExport_resource_group_name
  subnet_id                = var.storage_DataLakeExport_private_endpoint_subnet_id
  private_dns_zone_id      = var.storage_DataLakeExport_blob_private_dns_zone_id

  tags                     = var.tags
}

module "ServiceBusNamespace" {
  source = "./../../Modules/ServiceBusNamespace"

  resource_prefix     = var.resource_prefix
  name                = var.servicebusnamespace_name
  resource_group_name = var.servicebusnamespace_resource_group_name
  sku                 = var.servicebusnamespace_sku
  capacity            = var.servicebusnamespace_capacity

  subnet_id           = var.servicebusnamespace_private_endpoint_subnet_id
  private_dns_zone_id = var.servicebusnamespace_private_dns_zone_id
}

resource "azurerm_servicebus_queue" "fhireventqueue" {
  name         = "fhireventqueue"
  namespace_id = module.ServiceBusNamespace.id

  enable_partitioning = false
}

module "LogAnalytics" {
  source = "./../../Modules/LogAnalytics"

  ampls_scope_name        = var.ampls_scope_name
  sku                     = var.log_analytics_sku
  retention_in_days       = var.log_analytics_retention_in_days
  name                    = var.log_analytics_name
  resource_group_name     = var.log_analytics_resource_group_name
  resource_prefix         = var.resource_prefix
  
  tags                    = var.tags
}


module "ApplicationInsights" {
  source = "./../../Modules/ApplicationInsights"

  ampls_scope_name        = var.ampls_scope_name
  application_type        = var.application_insights_application_type
  name                    = var.application_insights_name
  resource_prefix         = var.resource_prefix
  resource_group_name     = var.application_insights_resource_group_name
  sampling_percentage     = var.application_insights_sampling_percentage
  tags                    = var.tags
  workspace_id            = module.LogAnalytics.id
}

module "EventGridSystemTopic" {
  source = "./../../Modules/EventGridSystemTopic"

  name                   = var.event_grid_system_topic_name
  resource_prefix        = var.resource_prefix
  resource_group_name    = var.event_grid_system_topic_resource_group_name
  source_arm_resource_id = module.AzureHealthCareWorkspace.id
  topic_type             = "Microsoft.HealthcareApis.Workspaces"
}

module "ProcessMessageFunctionApp" {
  source = "./../../Modules/FunctionAppWindows"

  name                                   = var.process_message_function_app_name
  resource_prefix                        = var.resource_prefix
  resource_group_name                    = var.process_message_function_app_resource_group_name
  service_plan_id                        = module.ServicePlanProcessMessage.id
  storage_account_access_key             = module.StorageAccountProcessMessage.primary_access_key
  storage_account_name                   = module.StorageAccountProcessMessage.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = {
    #todo now russell
    "hidden-related:/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-dev-rg/providers/Microsoft.Web/serverFarms/${var.process_message_function_app_name}" = "empty"
  }

  subnet_id           = var.process_message_function_app_private_endpoint_subnet_id
  private_dns_zone_id = var.process_message_function_app_private_dns_zone_id
}

module "AADFunctionApp" {
  source = "./../../Modules/FunctionAppLinux"

  name                = var.aad_function_app_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.aad_function_app_resource_group_name
  app_settings = {
    AZURE_APPINSIGHTS_INSTRUMENTATIONKEY        = module.ApplicationInsights.instrumentation_key
    AZURE_APPLICATIONINSIGHTS_CONNECTION_STRING = module.ApplicationInsights.connection_string
    AZURE_ApiManagementHostName                 = module.APIManagement.hostname
    AZURE_Audience                              = var.azure_audience
    AZURE_BackendServiceKeyVaultStore           = module.KeyVault.name
    AZURE_CacheConnectionString                 = module.RedisCache.primary_connection_string
    azure_app_client_id                    = var.azure_app_client_id
    AZURE_Debug                                 = "true"
    AZURE_FhirServerUrl                         = module.AzureHealthCareFHIR.FhirServerUrl
    AZURE_TenantId                              = data.azurerm_client_config.current.tenant_id
    ENABLE_ORYX_BUILD                           = "true"
    SCM_DO_BUILD_DURING_DEPLOYMENT              = "false"
  }
  service_plan_id                        = module.ServicePlanAppServ.id
  storage_account_access_key             = module.StorageAccountFHIRExport.primary_access_key
  storage_account_name                   = module.StorageAccountFHIRExport.name
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

  subnet_id           = var.aad_function_app_private_endpoint_subnet_id
  private_dns_zone_id = var.aad_function_app_private_dns_zone_id
}

module "ExportFunctionApp" {
  source = "./../../Modules/FunctionAppLinux"

  name                = var.linux_function_app_export_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.linux_function_app_export_resource_group_name
  app_settings = {
    AZURE_APPINSIGHTS_INSTRUMENTATIONKEY        = module.ApplicationInsights.instrumentation_key
    AZURE_APPLICATIONINSIGHTS_CONNECTION_STRING = module.ApplicationInsights.connection_string
    AZURE_ApiManagementHostName                 = module.APIManagement.hostname
    AZURE_Debug                                 = "true"
    AZURE_ExportStorageAccountUrl               = module.StorageAccountFHIRExport.primary_blob_endpoint
    AZURE_FhirServerUrl                         = module.AzureHealthCareFHIR.FhirServerUrl
    AZURE_TenantId                              = data.azurerm_client_config.current.tenant_id
    ENABLE_ORYX_BUILD                           = "true"
    SCM_DO_BUILD_DURING_DEPLOYMENT              = "false"
  }
  service_plan_id                        = module.ServicePlanAppServ.id
  storage_account_access_key             = module.StorageAccountFHIRExport.primary_access_key
  storage_account_name                   = module.StorageAccountFHIRExport.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  application_insights_key               = module.ApplicationInsights.instrumentation_key
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = var.tags

  subnet_id           = var.linux_function_app_export_private_endpoint_subnet_id
  private_dns_zone_id = var.linux_function_app_export_private_dns_zone_id
}

module "DataExportFunctionApp" {
  source = "./../../Modules/FunctionAppWindows"

  name                                   = var.windows_function_app_dataexport_name
  resource_prefix                        = var.resource_prefix
  resource_group_name                    = var.windows_function_app_dataexport_resource_group_name
  service_plan_id                        = module.ServicePlanDataExport.id
  storage_account_access_key             = module.StorageAccountDataExport.primary_access_key
  storage_account_name                   = module.StorageAccountDataExport.name
  application_insights_connection_string = module.ApplicationInsights.connection_string
  FhirFunctionAppConfigConnectionString  = module.AppConfiguration.primary_read_key[0].connection_string

  tags = {
    #todo now russell
    "hidden-related:/subscriptions/df479416-a3f3-42b4-97ab-0a0a2b788ba3/resourceGroups/cdc-dex-smart-dev-rg/providers/Microsoft.Web/serverFarms/${var.windows_function_app_dataexport_name}" = "empty"
  }

  subnet_id           = var.windows_function_app_dataexport_private_endpoint_subnet_id
  private_dns_zone_id = var.windows_function_app_dataexport_private_dns_zone_id
}

module "APIManagement" {
  source = "../ApiManagement"

  name                         = var.apimanagement_name
  publisher_email              = var.apimanagement_publisher_email
  publisher_name               = var.apimanagement_publisher_name
  resource_prefix              = var.resource_prefix
  resource_group_name          = var.apimanagement_resource_group_name
  sku_name                     = var.apimanagement_sku_name
  fhir_service_url             = module.AzureHealthCareFHIR.FhirServerUrl
  static_site_hostname         = module.StaticSite.default_host_name
  aad_function_hostname        = module.AADFunctionApp.default_hostname
  azure_audience               = var.azure_audience
  process_message_function_url = "${module.ProcessMessageFunctionApp.default_hosturl}/api/ProcessMessage?code=${module.ProcessMessageFunctionApp.default_function_key}&amp;clientId=default"

  subnet_id            = null
}

module "AppConfiguration" {
  source = "./../../Modules/AppConfiguration"

  resource_prefix     = var.resource_prefix
  name                = var.app_configuration_name
  resource_group_name = var.app_configuration_resource_group_name

  subnet_id           = var.app_configuration_private_endpoint_subnet_id
  private_dns_zone_id = var.app_configuration_private_dns_zone_id

  sku = var.app_configuration_sku

  #todo now russell parameters
  keys = {
    "AuthInstance"                          = "https://login.microsoftonline.com/{0}/oauth2/token"
    "AuthScope"                             = "${module.AzureHealthCareFHIR.FhirServerUrl}/.default"
    "AuthTenantId"                          = data.azurerm_client_config.current.tenant_id
    "BaseFhirUrl"                           = "https://${module.APIManagement.hostname}"
    "Export:DatalakeBlobContainer"          = "fhirdatadestination" # todo now russell container needs to get created
    "Export:DatalakeStorageAccount"         = var.storage_DataLakeExport_name
    "Export:FlattenExport"                  = "False"
    "Export:UnbundleExport"                 = "False"
    "FunctionProcessMessage:SkipValidation" = "True"
  }
}

resource "azurerm_role_assignment" "appconf_dataowner" {
  scope                = module.AppConfiguration.id
  role_definition_name = "App Configuration Data Owner"
  principal_id         = data.azurerm_client_config.current.object_id

  depends_on = [ module.AppConfiguration ]
}

data "azurerm_key_vault" "existing" {
  name                = module.KeyVault.name
  resource_group_name = module.KeyVault.resource_group_name
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