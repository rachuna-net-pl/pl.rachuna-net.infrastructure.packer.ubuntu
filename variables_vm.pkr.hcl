variable "vm_name" {
  type        = string
  description = "The name of the VM to create"
}

variable "vm_tags" {
  type        = string
  description = "The tags to assign to the VM"
}

variable "vm_id" {
  type        = number
  default     = 0
  description = "The ID of the VM to create"
}

variable "vm_memory" {
  type        = number
  default     = 4096
  description = "The amount of memory to allocate to the VM"
}

variable "vm_cores" {
  type        = number
  default     = 2
  description = "The number of cores to allocate to the VM"
}

variable "vm_sockets" {
  type        = number
  default     = 2
  description = "The number of sockets to allocate to the VM"
}

variable "vm_disk_size" {
  type        = string
  default     = "64G"
  description = "The size of the disk to allocate to the VM"
}

variable "vm_is_production" {
  type        = bool
  default     = false
  description = "Whether the VM is a production network"
}

variable "vm_interface" {
  type        = string
  description = "Name of the network interface that Packer gets the VMs IP from."
  default     = "eth0"
}