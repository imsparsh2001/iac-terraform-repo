module "storage" {
  source                   = "./modules/storage"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

module "app_service" {
  source              = "./modules/app-service"
  location            = var.location
  resource_group_name = var.resource_group_name
  asp_name            = var.asp_name
  app_service_name    = var.app_service_name
  app_service_tier    = var.app_service_tier
  app_service_size    = var.app_service_size
}
