/*
# VNet Gateways
resource "azurerm_virtual_network_gateway" "vngwone" {
  name                = "vnet-one-gateway"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location


  # User for VPN
  sku      = "VpnGw1"
  type     = "Vpn"
  vpn_type = "RouteBased"


  # Used for ExpressRoute
  # sku  = "Standard"
  # type = "ExpressRoute"

  ip_configuration {
    subnet_id            = azurerm_subnet.gateway-subnet-one.id
    public_ip_address_id = azurerm_public_ip.vnet-pip-one.id
  }
}

resource "azurerm_virtual_network_gateway" "vngwtwo" {
  name                = "vnet-two-gateway"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location

  sku      = "VpnGw1"
  type     = "Vpn"
  vpn_type = "RouteBased"

  ip_configuration {
    subnet_id            = azurerm_subnet.gateway-subnet-two.id
    public_ip_address_id = azurerm_public_ip.vnet-pip-two.id
  }
}
*/
/*
# Connections between the VNets
resource "azurerm_virtual_network_gateway_connection" "one-to-two" {
  name                = "one-to-two"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.vngwone.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.vngwtwo.id

  shared_key = "c0615507-322e-4b2d-9323-1ac3f8272dc3"
}

resource "azurerm_virtual_network_gateway_connection" "two-to-one" {
  name                = "two-to-one"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.vngwtwo.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.vngwone.id

  shared_key = "c0615507-322e-4b2d-9323-1ac3f8272dc3"
}
*/
