variable "keyboard_layout" {
  type        = string
  description = "Sets the keyboard layout during the setup-alpine install."
  default     = "pl"
}

variable "locale" {
  type        = string
  description = "Sets the locale during the setup-alpine install."
  default     = "pl_PL.UTF-8"
}

variable "timezone" {
  type        = string
  description = "Sets the timezone during the setup-alpine install."
  default     = "Europe/Warsaw"
}
