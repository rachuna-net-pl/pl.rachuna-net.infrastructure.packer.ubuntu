#### PROXMOX CLUSTER VARIABLES ####
# proxmox_node_name            = env("PKR_VAR_proxmox_node_name")
# proxmox_api_username         = env("PKR_VAR_proxmox_api_username")
# proxmox_api_password         = env("PKR_VAR_proxmox_api_password")
# proxmox_api_tls_verify       = env("PKR_VAR_proxmox_api_tls_verify")

#### BOOT ISO VARIABLES ####
# iso_url         = "https://releases.ubuntu.com/oracular/ubuntu-24.10-live-server-amd64.iso"
# iso_checksum    = "sha256:4fce7c02a5e5dbe3426da4aa0f8b7845e9a36aff29c5884d206a08e51b2c4c47"
iso_target_path = "downloaded_iso_path/ubuntu-24.10-live-server-amd64.iso"
# iso_storage_pool             = env("PKR_VAR_iso_storage_pool")
iso_file        = "ubuntu-24.10-live-server-amd64.iso"


#### VM VARIABLES ####
vm_name = "ubuntu-24.10"
vm_tags = "template;ubuntu-24"
vm_id            = 901
vm_memory        = 4096
vm_cores         = 2
vm_sockets       = 2
vm_disk_size     = "64G"
vm_is_production = false
vm_interface     = "ens18"

### USER ###
# ssh_username   = "ubuntu"
# ssh_password   = env("PKR_VAR_ssh_password")