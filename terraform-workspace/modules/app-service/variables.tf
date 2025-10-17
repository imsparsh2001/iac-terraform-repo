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
  type    = string
  default = "Standard"
}

variable "app_service_size" {
  type    = string
  default = "S1"
}
