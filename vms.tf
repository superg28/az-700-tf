resource "azurerm_network_interface" "nic-one" {
  name                = "vm-one-nic"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-one.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "nic-two" {
  name                = "vm-two-nic"
  location            = azurerm_resource_group.networking-rg.location
  resource_group_name = azurerm_resource_group.networking-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-two.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm-one" {
  name                = "VM-one"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location
  size                = "Standard_F2"

  admin_username = "userone"

  admin_ssh_key {
    username   = "userone"
    public_key = file("~/.ssh/id_rsa.pub")
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

}

resource "azurerm_linux_virtual_machine" "vm-two" {
  name                = "VM-two"
  resource_group_name = azurerm_resource_group.networking-rg.name
  location            = azurerm_resource_group.networking-rg.location
  size                = "Standard_F2"

  admin_username = "userone"

  admin_ssh_key {
    username   = "userone"
    public_key = file("~/.ssh/id_rsa.pub")
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

}