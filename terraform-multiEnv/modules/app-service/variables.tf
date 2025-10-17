variable "my_env" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "asp_name" {
  type = string
}

variable "app_service_name" {
  type = string
}

variable "app_service_tier" {
  description = "App service pricing tier"
  type        = string
  default     = "Standard"
}

variable "app_service_size" {
  description = "App service size (e.g. S1, B1)"
  type        = string
  default     = "S1"
}
