## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.vm-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.vm-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.nic-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface.nic-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/network_interface) | resource |
| [azurerm_private_dns_zone.my-private-dns](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.vnet-one-link](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.vnet-two-link](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_public_ip.pip-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/public_ip) | resource |
| [azurerm_public_ip.pip-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/public_ip) | resource |
| [azurerm_public_ip.vnet-pip-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/public_ip) | resource |
| [azurerm_public_ip.vnet-pip-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.networking-rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.gateway-subnet-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/subnet) | resource |
| [azurerm_subnet.gateway-subnet-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/subnet) | resource |
| [azurerm_subnet.subnet-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/subnet) | resource |
| [azurerm_subnet.subnet-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network.vnet-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_gateway.vngwone](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network_gateway) | resource |
| [azurerm_virtual_network_gateway.vngwtwo](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network_gateway) | resource |
| [azurerm_virtual_network_gateway_connection.one-to-two](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network_gateway_connection) | resource |
| [azurerm_virtual_network_gateway_connection.two-to-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network_gateway_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linux_vm_size"></a> [linux\_vm\_size](#input\_linux\_vm\_size) | Type/Size of the linux vms | `string` | `"Standard_F2"` | no |
| <a name="input_linux_vm_username"></a> [linux\_vm\_username](#input\_linux\_vm\_username) | username used on the vm | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm1_ip"></a> [vm1\_ip](#output\_vm1\_ip) | n/a |
| <a name="output_vm2_ip"></a> [vm2\_ip](#output\_vm2\_ip) | n/a |
