terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "rg_tfstate"  
    storage_account_name = "terraformbackend10372"                      
    container_name       = "tfstate"                      
    key                  = "dev.terraform.tfstate"        
  }
#   required_version = ">=1.9.0"
}

provider "azurerm" {
    features {
      
    }
    subscription_id = "030e3d0f-43d8-4e00-9a9a-53866101278a"
  
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
 
  name                     = "techtutorial101"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location 
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}