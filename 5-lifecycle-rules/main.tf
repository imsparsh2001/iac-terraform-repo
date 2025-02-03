
# creating resource group

resource "azurerm_resource_group" "dev" {
  name     = "${var.environment}-resources"
  location = var.location

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    # ignore_changes = [ tags ]
    precondition {
      condition = contains(var.allowed_locations, var.location)
      error_message = "Please enter a valid location!"
    }
    
  }
}


resource "azurerm_storage_account" "dev" {


  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.dev.name
  location                 = azurerm_resource_group.dev.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    ignore_changes = [ account_replication_type ]
    replace_triggered_by = [ azurerm_resource_group.example.id ]


  }

  tags = {
    environment = "production"
  }
}




# creating multiple storage accounts using for_each loop


# resource "azurerm_storage_account" "dev" {
# for_each = var.storage_account_name
# name = each.value
#   resource_group_name      = azurerm_resource_group.dev.name
#   location                 = azurerm_resource_group.dev.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = local.common_tags.environment
#   }
# }