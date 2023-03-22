# Setup the resource group
resource "azurerm_resource_group" "networking-rg" {
  name     = "az-networking-cert-rg"
  location = var.rg_location
}