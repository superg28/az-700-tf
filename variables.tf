# Resource group
variable "rg_location" {
  description = "location to use for the resource group"
  default     = "southafricanorth"
}
# VM variables
variable "linux_vm_size" {
  description = "Type/Size of the linux vms"
  default     = "Standard_F2"
  type        = string
}

variable "linux_vm_username" {
  description = "username used on the vm"
  type        = string
}

variable "linux_vm_admin_pass" {
  description = "admin user password for the vms"
  type        = string
  sensitive   = true
}

variable "ssh_pub_key" {
  description = "public key used for the vms"
  type        = string
  sensitive   = true
}
