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
