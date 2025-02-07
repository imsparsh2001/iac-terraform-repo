variable "rg_name" {
  type = string
  description = "name of the resource group"
  default = "provitioners-rg"
}

variable "location" {
  type = string
  description = "location of the resource group"
  default = "East US"
  
}

variable "vnet_name" {
  type = string
  description = "name of the virtual network"
  default = "provitioners-vnet"
  
}

variable "subnet_name" {
  type = string
  description = "name of the subnet"
  default = "provitioners-subnet"
  
}

variable "nsg_name" {
  type = string
  description = "name of the network security group"
  default = "provitioners-nsg"
  
}

variable "vm_public_ip_name" {
  type = string
  description = "name of the public ip"
  default = "provitioners-public-ip"
  
}


