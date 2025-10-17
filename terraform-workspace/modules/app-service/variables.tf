variable "my_env" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "asp_name" {
  description = "Base name for the App Service Plan"
  type        = string
}

variable "app_service_name" {
  description = "name for the App Service"
  type        = string
}
