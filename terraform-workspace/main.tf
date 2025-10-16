# DEV environment
module "dev_app" {
  source               = "./azure_infra"
  my_env               = "dev"
  location             = "East US"
  resource_group_name  = "Sparsh_Jaipuriyar"
  asp_name             = "demo-asp"
  app_service_name     = "devapplication"
  storage_account_name = "devstorage"
}

# TEST environment
module "test_app" {
  source               = "./azure_infra"
  my_env               = "test"
  location             = "East US"
  resource_group_name  = "Sparsh_Jaipuriyar"
  asp_name             = "demo-asp"
  app_service_name     = "testapplication"
  storage_account_name = "teststorage"
}

# PROD environment
module "prod_app" {
  source               = "./azure_infra"
  my_env               = "prod"
  location             = "East US"
  resource_group_name  = "Sparsh_Jaipuriyar"
  asp_name             = "demo-asp"
  app_service_name     = "prodapplication"
  storage_account_name = "prodstorage"
}