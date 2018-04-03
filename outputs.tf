output "api_app_id" {
  description = "The API App ID."
  value       = "${azurerm_template_deployment.api_app.outputs["apiAppId"]}"
}

output "api_app_name" {
  description = "The API App name."
  value       = "${azurerm_template_deployment.api_app.outputs["apiAppName"]}"
}

output "default_site_hostname" {
  description = "The Default Hostname associated with the API App."
  value       = "${azurerm_template_deployment.api_app.outputs["defaultSiteHostname"]}"
}
