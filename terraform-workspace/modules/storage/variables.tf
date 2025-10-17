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

variable "storage_account_name" {
  description = "name for the Storage Account"
  type        = string
}
