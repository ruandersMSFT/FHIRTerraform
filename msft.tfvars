resource_group_name     = "cdc-dex-smart-terraform-rg"
resource_group_location = "eastus2"

deploy_private_endpoints = true

resource_prefix = "cdc-dex-smart-"

aad_function_app_name = "aad-func"

azure_audience      = "https://cdc-dex-smart-dev.microsoft.onmicrosoft.com"
azure_app_client_id = "4d4b616c-a6f4-450b-8048-7482d7dbca49"

azure_monitor_private_link_scope_name = "AMPLS"

apimanagement_name            = "apim"
apimanagement_publisher_email = "mislentz@microsoft.com"
apimanagement_publisher_name  = "Michael Slentz"
apimanagement_sku_name        = "Premium_1"

app_configuration_name = "appconfig"
app_configuration_sku  = "standard"

application_insights_name                = "appinsights"
application_insights_sampling_percentage = 0

event_grid_system_topic_name = "fhirresourcecreatedevent"

keyvault_name     = "tf-backkv"
keyvault_sku_name = "standard"

linux_function_app_export_name = "exp-func"

log_analytics_name              = "loganalytics"
log_analytics_retention_in_days = 30
log_analytics_sku               = "PerGB2018"

healthcare_workspace_name = "devhealth2"

healthcare_fhir_authentication_audience                   = "https://cdc-dex-smart-dev.microsoft.onmicrosoft.com"
healthcare_fhir_authentication_authority                  = "https://login.microsoftonline.com"
healthcare_fhir_name                                      = "fhirdata"
healthcare_fhir_configuration_export_storage_account_name = "funcsa2" # todo now russell, needs to be in the deployment

network_name = "network"

process_message_function_app_name = "processmessage"

redis_cache_name     = "apim-cache"
redis_cache_sku      = "Basic"
redis_cache_capacity = 0

servicebusnamespace_name     = "servicebus"
servicebusnamespace_capacity = 1

static_site_name = "dev-contextswa"

storage_DataExport_name     = "desa2"
storage_ProcessMessage_name = "pmsa2"
storage_DataLakeExport_name = "datalakeeast2"

windows_function_app_dataexport_name = "dataexport"

tags = {
  "a" : "1"
}