variable "resource_group_name" {
  type = string
  description = "name of the resource group"
  default = "application-rg"
}

variable "allowed_locations" {
  type = list(string)
  description = "list of allowed locations"
  default = [ "West Europe","North Europe","East US","Canada Central" ]
}

variable "plan_name" {
  type = string
  description = "name of app service plan"
  default = "dev-appserviceplan"
}

variable "webapp_name" {
  type = string
  description = "name of app service"
  default = "devappserviceunique109378"
}

variable "slot_name" {
  type = string
  description = "name of staging slot"
  default = "staging-slot"
}