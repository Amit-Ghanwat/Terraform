/*
#Network Interface card creation
resource "azurerm_network_interface" "nic" {
  #for_each = var.vm
  resource_group_name = data.azurerm_resource_group.rg-ex.name
  location            = data.azurerm_resource_group.rg-ex.location
  name                = var.vmname

  ip_configuration {
    subnet_id                     = data.azurerm_subnet.snet-ex.id
    name                          = var.privateipname
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

#VM creation
resource "azurerm_linux_virtual_machine" "vm" {
  resource_group_name = data.azurerm_resource_group.rg-ex.name
  location            = data.azurerm_resource_group.rg-ex.location
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  name                            = var.vmname
  size                            = "Standard_B1S"
  admin_username                  = "admin2316"
  disable_password_authentication = "false"
  admin_password                  = "spidermaN@2316"
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "Latest"
  }
}

resource "azurerm_managed_disk" "data-disk" {
  name                 = var.vmname
  resource_group_name = data.azurerm_resource_group.rg-ex.name
  location            = data.azurerm_resource_group.rg-ex.location
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "Lun1" {
  managed_disk_id    = azurerm_managed_disk.data-disk.id
  virtual_machine_id = azurerm_linux_virtual_machine.vm.id
  lun                = "10"
  caching            = "ReadWrite"
}
*/

/*
#Network Interface card creation
resource "azurerm_network_interface" "nic" {
  resource_group_name = var.rgname
  location            = var.location
  name                = "cstm-nic"

  ip_configuration {
    subnet_id                     = azurerm_subnet.snet.id
    name                          = "private-ip"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

#VM creation
resource "azurerm_linux_virtual_machine" "vm" {
  resource_group_name = var.rgname
  location            = var.location
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  name                            = "cstm-vm"
  size                            = "Standard_B1S"
  admin_username                  = "admin2316"
  disable_password_authentication = "false"
  admin_password                  = "spidermaN@2316"
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "Latest"
  }
}

*/
