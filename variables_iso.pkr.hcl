variable "iso_url" {
  type        = string
  description = "The URL of the ISO file to use to boot the VM"
  default     = null
}

variable "iso_checksum" {
  type        = string
  description = "The checksum of the ISO file to use to boot the VM"
  default     = null
}

variable "iso_storage_pool" {
  type        = string
  description = "The storage pool to use to store the ISO file"
  default     = "local"
}

variable "iso_file" {
  type        = string
  default     = null
  description = "The path to the ISO file to use to boot the VM"
}

variable "iso_target_path" {
  type        = string
  default     = null
  description = "The path to the ISO file to use to boot the VM"
}