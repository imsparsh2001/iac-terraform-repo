resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.allowed_locations[3]
}

//creating app service and plan for deploying web application

resource "azurerm_app_service_plan" "devplan" {
  name                = var.plan_name 
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "devapplication" {
  name                = var.webapp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.devplan.id

  # site_config {
  #   dotnet_framework_version = "v4.0"
  #   scm_type                 = "LocalGit"
  # }

  # app_settings = {
  #   "SOME_KEY" = "some-value"
  # }

#   connection_string {
#     name  = "Database"
#     type  = "SQLServer"
#     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#   }
}


resource "azurerm_app_service_slot" "slot" {
  name                = var.slot_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.devplan.id
  app_service_name    = azurerm_app_service.devapplication.name
}

resource "azurerm_app_service_source_control" "scm" {
  app_id   = azurerm_app_service.devapplication.id
  repo_url = "https://github.com/imsparsh2001/terraform-sample-project.git"
  branch   = "master"
}

resource "azurerm_app_service_source_control_slot" "scm1" {
  slot_id   = azurerm_app_service_slot.slot.id
  repo_url = "https://github.com/imsparsh2001/terraform-sample-project.git"
  branch   = "appServiceSlot_Working_DO_NOT_MERGE"
}

resource "azurerm_web_app_active_slot" "active" {
  slot_id = azurerm_app_service_slot.slot.id
}