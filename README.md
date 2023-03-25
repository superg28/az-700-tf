<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
| [azurerm_public_ip.vnet-pip-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.networking-rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.gateway-subnet-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-one](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_gateway.vngwone](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/resources/virtual_network_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linux_vm_size"></a> [linux\_vm\_size](#input\_linux\_vm\_size) | Type/Size of the linux vms | `string` | `"Standard_F2"` | no |
| <a name="input_linux_vm_username"></a> [linux\_vm\_username](#input\_linux\_vm\_username) | username used on the vm | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | location to use for the resource group | `string` | `"southafricanorth"` | no |
| <a name="input_ssh_pub_key"></a> [ssh\_pub\_key](#input\_ssh\_pub\_key) | public key used for the vms | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
