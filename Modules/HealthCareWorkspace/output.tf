# #############################################################################
# # OUTPUTS Health Care Workspace
# #############################################################################

output "id" {
  value = azurerm_healthcare_workspace.HealthCareWorkspace.id
}

output "name" {
  value = "${local.healthcare_workspace_resource_prefix}${var.name}"
}