# Private DNS zone
resource "azurerm_private_dns_zone" "my-private-dns" {
  name                = "my-network.net"
  resource_group_name = azurerm_resource_group.networking-rg.name
}

# VNet Pvt DNS links
resource "azurerm_private_dns_zone_virtual_network_link" "vnet-one-link" {
  name                  = "VNet-one-link"
  resource_group_name   = azurerm_resource_group.networking-rg.name
  private_dns_zone_name = azurerm_private_dns_zone.my-private-dns.name
  virtual_network_id    = azurerm_virtual_network.vnet-one.id
  registration_enabled  = true
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet-two-link" {
  name                  = "VNet-two-link"
  resource_group_name   = azurerm_resource_group.networking-rg.name
  private_dns_zone_name = azurerm_private_dns_zone.my-private-dns.name
  virtual_network_id    = azurerm_virtual_network.vnet-two.id
  registration_enabled  = true
}

# VNets
resource "azurerm_virtual_network" "vnet-one" {
  name                = "test-vnet-one"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "vnet-two" {
  name                = "test-vnet-two"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name
  address_space       = ["10.0.0.0/16"]
}

# Subnets
resource "azurerm_subnet" "subnet-one" {
  name                 = "test-subnet-one"
  resource_group_name  = azurerm_resource_group.networking-rg.name
  virtual_network_name = azurerm_virtual_network.vnet-one.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet-two" {
  name                 = "test-subnet-two"
  resource_group_name  = azurerm_resource_group.networking-rg.name
  virtual_network_name = azurerm_virtual_network.vnet-two.name
  address_prefixes     = ["10.0.2.0/24"]
}