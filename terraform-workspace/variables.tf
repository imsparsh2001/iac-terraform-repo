variable "location" {
  type        = string
  description = "Azure region where resources will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group."
}

variable "asp_name" {
  type        = string
  description = "Base name for the App Service Plan."
}

variable "app_service_name" {
  type        = string
  description = "Base name for the App Service."
}

variable "app_service_tier" {
  type        = string
  description = "Pricing tier for the App Service Plan."
  default     = "Standard"
}

variable "app_service_size" {
  type        = string
  description = "Instance size for the App Service Plan."
  default     = "S1"
}

variable "storage_account_name" {
  type        = string
  description = "Base name for the Azure Storage Account."
}

variable "account_tier" {
  type        = string
  description = "Performance tier of the storage account."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Replication strategy for the storage account."
  default     = "LRS"
}
