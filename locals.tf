# locals setup
locals {
  # used in az appgw
  backend_address_pool_name      = "${azurerm_virtual_network.vnet-one.name}-beap"
  frontend_port_name             = "${azurerm_virtual_network.vnet-one.name}-feport"
  frontend_ip_configuration_name = "${azurerm_virtual_network.vnet-one.name}-feip"
  http_setting_name              = "${azurerm_virtual_network.vnet-one.name}-be-htst"
  listener_name                  = "${azurerm_virtual_network.vnet-one.name}-httplstn"
  request_routing_rule_name      = "${azurerm_virtual_network.vnet-one.name}-rqrt"
  redirect_configuration_name    = "${azurerm_virtual_network.vnet-one.name}-rdrcfg"
}
