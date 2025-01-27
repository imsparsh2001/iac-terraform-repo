


# creating multiple storage accounts using for_each loop


resource "azurerm_storage_account" "dev" {
for_each = var.storage_account_name
name = each.value
  resource_group_name      = azurerm_resource_group.dev.name
  location                 = azurerm_resource_group.dev.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = local.common_tags.environment
  }
}