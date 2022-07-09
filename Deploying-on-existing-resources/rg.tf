
#RG creation
resource "azurerm_resource_group" "rg" {
  name     = "rg111"
  location = "eastus"
  tags = {
    env = "prod"
  }
  }


