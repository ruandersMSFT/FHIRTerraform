output "FhirServerUrl" {
  value = module.AzureHealthCareFHIR.FhirServerUrl
}

output "static_site_default_host_name" {
  value = module.StaticSite.default_host_name
}

output "aad_function_app_defalt_hostname" {
  value = module.AADFunctionApp.default_hostname
}

output "processmessage_function_app_defalt_hostname" {
  value = module.ProcessMessageFunctionApp.default_hosturl
}

output "processmessage_function_app_defalt_function_key" {
  value = module.ProcessMessageFunctionApp.default_function_key
}

