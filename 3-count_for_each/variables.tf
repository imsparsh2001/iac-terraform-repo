variable "environment" {
    type = string
    description = "the env type"
    default = "staging"
}

variable "storage_disk" {
  type = number
  description = "value of storage disk"
  default = 50
}

variable "allowed_locations" {
  type = list(string)
  description = "list of allowed location"
  default = [ "West Europe", "North Europe", "East US" ]
}

//count example

# variable "storage_account_name" {
#   type = list(string)
#   description = "name of the storage account"
#   default = [ "storagewe98764","storageeus987362" ]
# }

variable "storage_account_name" {
  type = set(string)
  description = "name of the storage account"
  default = [ "value187372","value18t28731" ]
}