terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  required_version = ">= 1.9.0"
}

provider "azurerm" {
    features {
      
    }
    subscription_id = "333359c5-cc92-4749-8db5-60b6741fdb15"
  
}