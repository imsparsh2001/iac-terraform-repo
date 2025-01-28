# output "storage_account_name" {
#   value = azurerm_storage_account.example.name
# }   


output "rgname" {
  value = azurerm_resource_group.dev[*].name
}

output "storage_name" {
  value = [for i in azurerm_storage_account.dev: i.name]
}