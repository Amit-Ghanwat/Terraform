#VNET creation
resource "azurerm_virtual_network" "vnet" {
  #resource_group_name = azurerm_resource_group.rg.name
  resource_group_name = var.rgname
  location            = var.location
  name                = "vnet"
  address_space       = ["10.0.0.0/16"]
}

#subnet creation
resource "azurerm_subnet" "snet" {
  resource_group_name  = var.rgname
  virtual_network_name = azurerm_virtual_network.vnet.name
  name                 = "subnet"
  address_prefixes     = ["10.0.1.0/24"]
}

