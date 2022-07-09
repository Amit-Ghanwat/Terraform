
#RG creation
resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
  tags = {
    env = "prod"
  }
}
