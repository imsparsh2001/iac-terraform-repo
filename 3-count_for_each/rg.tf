resource "azurerm_resource_group" "dev" {
  name     = "${var.environment}-resources"
  location = var.allowed_locations[2]
}

# resource "azurerm_resource_group" "dev" {
#   name     = var.environment + "-resources" # Direct string concatenation
#   location = var.allowed_locations[2]       # Direct usage
# }