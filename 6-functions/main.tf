

resource "azurerm_resource_group" "example" {
  name     = local.formatted_name
  location = var.location
}
