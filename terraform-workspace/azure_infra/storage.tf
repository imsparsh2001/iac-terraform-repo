resource "azurerm_storage_account" "my_app_storage" {
  name                     = "${var.my_env}${var.storage_account_name}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Name        = "${var.my_env}-demo-app-storage"
    Environment = var.my_env
  }
}
