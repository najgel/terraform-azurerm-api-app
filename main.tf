resource "azurerm_template_deployment" "api_app" {
  name                = "${var.api_app_name}"
  resource_group_name = "${var.resource_group_name}"
  template_body       = "${file("${path.module}/template.json")}"

  parameters {
    "name"               = "${var.api_app_name}"
    "serverFarmId"       = "${var.app_service_plan_id}"
    "apiDefinitionUrl"   = "${var.api_definition_url}"
    "corsAllowedOrigins" = "${join(",", var.cors_allowed_origins)}"
    "location"           = "${var.location}"
  }

  deployment_mode = "Incremental"
}
