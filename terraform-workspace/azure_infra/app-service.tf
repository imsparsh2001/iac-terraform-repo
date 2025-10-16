resource "azurerm_app_service_plan" "asp" {
  name                = "${var.my_env}-${var.asp_name}"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }

  tags = {
    Environment = var.my_env
    Name        = "${var.my_env}-${var.asp_name}"
  }
}

resource "azurerm_app_service" "as" {
  name                = "${var.my_env}-${var.app_service_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.asp.id



  tags = {
    Environment = var.my_env
    Name        = "${var.my_env}-${var.app_service_name}"
  }
}
