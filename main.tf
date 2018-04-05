resource "azurerm_resource_group" "api_app" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_template_deployment" "api_app" {
  name                = "${var.api_app_name}"
  resource_group_name = "${azurerm_resource_group.api_app.name}"
  template_body       = "${file("${path.module}/template.json")}"

  parameters {
    "name"               = "${var.api_app_name}"
    "serverFarmId"       = "${var.app_service_plan_id}"
    "apiDefinitionUrl"   = "${var.api_definition_url}"
    "corsAllowedOrigins" = "${jsonencode(var.cors_allowed_origins)}"
    "location"           = "${var.location}"
    "tags"               = "${jsonencode(var.tags)}"
  }

  deployment_mode = "Incremental"
}
