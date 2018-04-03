variable "api_app_name" {
  description = "Specifies the name of the API App."
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service Plan component."
}

variable "location" {
  description = "Specifies the supported Azure location where the resource is to be created."
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan within which to create this App Service."
}

variable "api_definition_url" {
  default     = ""
  description = "The URL of the API definition."
}

variable "cors_allowed_origins" {
  default     = []
  description = "Sets the list of origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). Use * to allow all."
}

variable "scm_type" {
  default     = "None"
  description = "	SCM type."
}