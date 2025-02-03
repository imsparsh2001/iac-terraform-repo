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

variable "location" {
  default = "West Europe"
  type = string
  
}


variable "storage_account_name" {
  type = string
  description = "name of the storage account"
  default = "storageneurope120679"
}