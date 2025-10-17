resource "azurerm_storage_account" "my_app_storage" {
  name                     = "${var.my_env}${var.storage_account_name}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    Environment = var.my_env
    Name        = "${var.my_env}-storage"
  }
}
