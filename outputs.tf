output "api_app_id" {
  description = "The API App ID."
  value       = "${azurerm_template_deployment.api_app.outputs["apiAppId"]}"
}

output "default_site_hostname" {
  description = "The API App ID."
  value       = "${azurerm_template_deployment.api_app.outputs["defaultSiteHostname"]}"
}

output "resource_group_id" {
  description = "The resource group ID."
  value       = "${azurerm_resource_group.api_app.id}"
}
