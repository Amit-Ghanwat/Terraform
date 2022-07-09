
data "azurerm_resource_group" "rg-ex" {
  name = "rg111"
  #location = "eastus"
}

data "azurerm_virtual_network" "vnet-ex" {
  name                = "cstm-vnet"
  resource_group_name = "rg111"
}

data "azurerm_subnet" "snet-ex" {
  name                 = "cstm-subnet"
  virtual_network_name = "cstm-vnet"
  resource_group_name  = "rg111"
}


/*
output "id" {
  value = data.azurerm_resource_group.rg-ex.id
}

output "vnet-ex" {
  value = data.azurerm_virtual_network.vnet-ex.id
}
*/