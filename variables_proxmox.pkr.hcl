variable "proxmox_node_name" {
  type        = string
  description = "The name of the Proxmox node to connect to"
}

variable "proxmox_api_username" {
  type        = string
  description = "The username to authenticate with the Proxmox API"
  default     = "root@pam"
  sensitive   = true
}

variable "proxmox_api_password" {
  type        = string
  description = "The password to authenticate with the Proxmox API"
  sensitive   = true
}

variable "proxmox_api_tls_verify" {
  type        = bool
  default     = false
  description = "Skip TLS verification"
}