resource "azurerm_storage_account" "my_app_storage" {
  name                     = "${terraform.workspace}${var.storage_account_name}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Name        = "${terraform.workspace}-demo-app-storage"
    Environment = terraform.workspace
  }
}
