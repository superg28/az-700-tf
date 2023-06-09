
# Outputs
output "vm1_ip" {
  value = azurerm_linux_virtual_machine.vm-one.public_ip_address
}

output "vm2_ip" {
  value = azurerm_linux_virtual_machine.vm-two.public_ip_address
}

output "appgwpip" {
  value = azurerm_public_ip.app-gw-pip.ip_address
}
