resource "random_id" "randomize" {
  byte_length = 8
}

module "app_service_plan" {
  source                = "github.com/innovationnorway/terraform-azurerm-app-service-plan"
  app_service_plan_name = "${random_id.randomize.hex}-plan"
  resource_group_name   = "${random_id.randomize.hex}-rg"
  location              = "${var.location}"
}

module "api_app" {
  source              = "../../../"
  api_app_name        = "${random_id.randomize.hex}-api"
  app_service_plan_id = "${module.app_service_plan.app_service_plan_id}"
  location            = "${var.location}"
  resource_group_name = "${random_id.randomize.hex}-rg"
}
