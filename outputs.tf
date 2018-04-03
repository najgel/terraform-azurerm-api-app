output "api_app_id" {
  description = "The API App ID."
  value       = "${azurerm_template_deployment.api_app.outputs["apiAppId"]}"
}

output "default_site_hostname" {
  description = "The Default Hostname associated with the API App."
  value       = "${azurerm_template_deployment.api_app.outputs["defaultSiteHostname"]}"
}

output "resource_group_id" {
  description = "The resource group ID."
  value       = "${azurerm_resource_group.api_app.id}"
}

output "resource_group_name" {
  description = "The resource group name."
  value       = "${azurerm_resource_group.api_app.name}"
}
