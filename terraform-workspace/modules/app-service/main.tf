resource "azurerm_app_service_plan" "asp" {
  name                = "${terraform.workspace}-${var.asp_name}"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.app_service_tier
    size = var.app_service_size
  }

  tags = {
    Environment = terraform.workspace
    Name        = "${terraform.workspace}-${var.asp_name}"
  }
}

resource "azurerm_app_service" "as" {
  name                = "${terraform.workspace}-${var.app_service_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  tags = {
    Environment = terraform.workspace
    Name        = "${terraform.workspace}-${var.app_service_name}"
  }
}
