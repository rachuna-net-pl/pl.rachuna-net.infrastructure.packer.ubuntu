variable "ssh_username" {
  type        = string
  description = "SSH username for the target machine."
  default     = "ubuntu"
}

variable "ssh_password" {
  type        = string
  description = "SSH password for the target machine."
  default     = "ubuntu-password"
  sensitive   = true
}

variable "ssh_private_key_file" {
  type        = string
  default     = null
  description = "Path to private key file for SSH authentication."
}

variable "ssh_public_key" {
  type        = string
  description = "Public key data for SSH authentication. If set, password authentication will be disabled."
  default     = ""
  sensitive   = true
}

variable "ssh_agent_auth" {
  type        = bool
  description = "Whether to use an exisiting ssh-agent to pass in the SSH private key passphrase."
  default     = false
}