variable "resource_group_name" {
  type = string
  description = "name of the resource group "
  default = "peering_rg"
}

variable "location" {
  type = string
  description = "resouce group location"
  default = "West Europe"
}

variable "vnet1_name" {
  type = string
  description = "vnet 1 naming "
  default = "peer1-vnet"
}

variable "vnet2_name" {
  type = string
  description = "vnet 2 name "
  default = "peer2-vnet"
}

variable "subnet1" {
  type = string
  description = "subnet 1 naming "
  default = "peer1-subnet "

}

variable "subnet2" {
  type = string
  description = "subnet 2 naming"
  default = "peer2-subnet"
}

variable "environment" {
  type = string
  description = "name of enviroment "
  default = "dev-enviroment"
}


variable "admin_username" {
  type    = string
  default = "testadmin"
}

variable "admin_password" {
  type    = string
  default = "Password1234!"
}