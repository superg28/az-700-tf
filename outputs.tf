/*
# Outputs
output "vm1_ip" {
  value = azurerm_linux_virtual_machine.vm-one.public_ip_address
}

output "vm2_ip" {
  value = azurerm_linux_virtual_machine.vm-two.public_ip_address
}
*/

output "pip_one_ip" {
  value = azurerm_public_ip.pip-one.ip_address
}
