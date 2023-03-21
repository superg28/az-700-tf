
/*# WAN and hub set up
resource "azurerm_virtual_wan" "az_vwan" {
  name                = "central-wan"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name
}

resource "azurerm_virtual_hub" "az_vnet_hub" {
  name                = "central-wan-hub"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name
  virtual_wan_id      = azurerm_virtual_wan.az_vwan.id
  address_prefix      = "10.60.0.0/24"
}

# Connect the VNets to the hub
resource "azurerm_virtual_hub_connection" "VNet1toHub" {
  name                      = "VNet1toHub"
  virtual_hub_id            = azurerm_virtual_hub.az_vnet_hub.id
  remote_virtual_network_id = azurerm_virtual_network.vnet-one.id
}

resource "azurerm_virtual_hub_connection" "VNet2toHub" {
  name                      = "VNet2toHub"
  virtual_hub_id            = azurerm_virtual_hub.az_vnet_hub.id
  remote_virtual_network_id = azurerm_virtual_network.vnet-two.id
}
*/