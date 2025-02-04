resource "azurerm_network_interface" "main1" {
  name                = "peer1-nic"
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
  }

  depends_on = [azurerm_subnet.subnet1] 
}

resource "azurerm_virtual_machine" "main1" {
  name                  = "peer1-vm"
  location              = azurerm_resource_group.dev.location
  resource_group_name   = azurerm_resource_group.dev.name
  network_interface_ids = [azurerm_network_interface.main1.id]
  vm_size               = "Standard_DS1_v2"

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  storage_os_disk {
    name              = "peer1-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "peer1-vm"  
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = var.environment
  }

  depends_on = [azurerm_network_interface.main1] 
}

resource "azurerm_network_interface" "main2" {
  name                = "peer2-nic"
  location            = azurerm_resource_group.dev.location
  resource_group_name = azurerm_resource_group.dev.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet2.id
    private_ip_address_allocation = "Dynamic"
  }

  depends_on = [azurerm_subnet.subnet2] 
}

resource "azurerm_virtual_machine" "main2" {
  name                  = "peer2-vm"
  location              = azurerm_resource_group.dev.location
  resource_group_name   = azurerm_resource_group.dev.name
  network_interface_ids = [azurerm_network_interface.main2.id]
  vm_size               = "Standard_DS1_v2"

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  storage_os_disk {
    name              = "peer2-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "peer2-vm"  
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = var.environment  
  }

  depends_on = [azurerm_network_interface.main2] 
}
