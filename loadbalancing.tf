# Load balancing setup
resource "azurerm_lb" "loadbalancer" {
  name                = "az-700-lb"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  sku      = "Standard"
  sku_tier = "Regional"

  frontend_ip_configuration {
    name                 = "lb_ip_config"
    public_ip_address_id = azurerm_public_ip.pip-one.id
  }
}

# create the address pool
resource "azurerm_lb_backend_address_pool" "lb_backend_pool" {
  name            = "lb_backend_pool"
  loadbalancer_id = azurerm_lb.loadbalancer.id
}

# add the NICs (VM) IPs to the pool
resource "azurerm_network_interface_backend_address_pool_association" "niconetolbnp" {
  network_interface_id    = azurerm_network_interface.nic-one.id
  ip_configuration_name   = "nic_one_to_lb_np"
  backend_address_pool_id = azurerm_lb_backend_address_pool.lb_backend_pool.id
}

resource "azurerm_network_interface_backend_address_pool_association" "nictwotolbnp" {
  network_interface_id    = azurerm_network_interface.nic-two.id
  ip_configuration_name   = "nic_two_to_lb_np"
  backend_address_pool_id = azurerm_lb_backend_address_pool.lb_backend_pool.id
}

# probes and rules
resource "azurerm_lb_probe" "lb_probe" {
  name            = "lb_backend_probe"
  loadbalancer_id = azurerm_lb.loadbalancer.id
  port            = 80
  protocol        = "Http"
  request_path    = "/"
}

resource "azurerm_lb_rule" "lb_rule" {
  name                           = "lb_rule"
  loadbalancer_id                = azurerm_lb.loadbalancer.id
  frontend_ip_configuration_name = "lb_ip_config"
  frontend_port                  = 80
  backend_port                   = 80
  protocol                       = "Tcp"
  backend_address_pool_ids = [
    azurerm_lb_backend_address_pool.lb_backend_pool.id
  ]
}
