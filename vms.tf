
# VM setups
resource "azurerm_network_interface" "nic-one" {
  name                = "vm-one-nic"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-one.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-one.id
  }
}

resource "azurerm_network_interface" "nic-two" {
  name                = "vm-two-nic"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-one.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-two.id
  }
}

resource "azurerm_linux_virtual_machine" "vm-one" {
  name                = "VM-one"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location
  size                = var.linux_vm_size

  admin_username = var.linux_vm_username

  admin_password = var.linux_vm_admin_pass

  admin_ssh_key {
    username   = var.linux_vm_username
    public_key = var.ssh_pub_key
  }

  network_interface_ids = [
    azurerm_network_interface.nic-one.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    offer     = "UbuntuServer"
    publisher = "Canonical"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  connection {
    type     = "ssh"
    user     = var.linux_vm_username
    password = var.linux_vm_admin_pass
    host     = self.public_ip_address
  }

  provisioner "file" {
    source      = "./vm_prov_scripts/install_nginx.sh"
    destination = "/tmp/install_nginx.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install_nginx.sh",
      "/tmp/install_nginx.sh VM01"
    ]
  }

}

resource "azurerm_linux_virtual_machine" "vm-two" {
  name                = "VM-two"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location
  size                = var.linux_vm_size

  admin_username = var.linux_vm_username

  admin_password = var.linux_vm_admin_pass

  admin_ssh_key {
    username   = var.linux_vm_username
    public_key = var.ssh_pub_key
  }

  network_interface_ids = [
    azurerm_network_interface.nic-two.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    offer     = "UbuntuServer"
    publisher = "Canonical"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  connection {
    type     = "ssh"
    user     = var.linux_vm_username
    password = var.linux_vm_admin_pass
    host     = self.public_ip_address
  }

  provisioner "file" {
    source      = "./vm_prov_scripts/install_nginx.sh"
    destination = "/tmp/install_nginx.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install_nginx.sh",
      "/tmp/install_nginx.sh VM02"
    ]
  }

}
