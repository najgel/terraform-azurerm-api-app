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
    "corsAllowedOrigins" = "${join(",", var.cors_allowed_origins)}"
    "location"           = "${azurerm_resource_group.api_app.location}"
  }

  deployment_mode = "Incremental"

  lifecycle {
    create_before_destroy = true
  }
}
