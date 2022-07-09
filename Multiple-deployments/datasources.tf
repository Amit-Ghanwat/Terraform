
data "azurerm_resource_group" "rg-ex" {
  name = "rg112"
  #location = "eastus"
}

data "azurerm_virtual_network" "vnet-ex" {
  name                = "vnet"
  resource_group_name = "rg112"
}

data "azurerm_subnet" "snet-ex" {
  name                 = "subnet"
  virtual_network_name = "vnet"
  resource_group_name  = "rg112"
}


/*
output "id" {
  value = data.azurerm_resource_group.rg-ex.id
}

output "vnet-ex" {
  value = data.azurerm_virtual_network.vnet-ex.id
}
*/