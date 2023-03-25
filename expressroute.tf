# Express route resources
/*
resource "azurerm_express_route_circuit" "express-example" {
  name                = "expresstest"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location

  service_provider_name = "Teraco"
  peering_location      = "Johannesburg"
  bandwidth_in_mbps = 50

  sku {
    tier   = "Standard"
    family = "MeteredData"
  }
}
*/
