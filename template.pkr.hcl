source "proxmox-iso" "ubuntu" {
  ## Proxmox Connection Details
  proxmox_url              = "https://${var.proxmox_node_name}.rachuna-net.pl:8006/api2/json"
  node                     = var.proxmox_node_name
  username                 = var.proxmox_api_username
  password                 = var.proxmox_api_password
  insecure_skip_tls_verify = !var.proxmox_api_tls_verify

  ## VM Template Definition
  template_name        = "${var.vm_name}"
  template_description = "Built on ${formatdate("YYYY-MM-DD HH:mm", timestamp())}"
  vm_id                = var.vm_id == 0 ? null : var.vm_id
  vm_name              = var.vm_name
  tags                 = var.vm_tags
  pool                 = "templates"

  boot_iso {
    iso_url          = var.iso_url
    iso_target_path  = var.iso_target_path
    iso_checksum     = var.iso_checksum
    iso_storage_pool = var.iso_storage_pool
    iso_file         = var.iso_file == null ? null : "${var.iso_storage_pool}:iso/${var.iso_file}"
    unmount          = true
  }

  ## VM Configuration
  os              = "l26"
  qemu_agent      = true
  memory          = var.vm_memory
  cores           = var.vm_cores
  sockets         = var.vm_sockets
  scsi_controller = "virtio-scsi-pci"

  network_adapters {
    bridge   = "vmbr0"
    model    = "virtio"
    vlan_tag = var.vm_is_production ? 20 : 10
    firewall = true
  }

  disks {
    type         = "scsi"
    disk_size    = var.vm_disk_size
    storage_pool = "storage.rachuna-net.pl"
    format       = "raw"
  }

  ## HTTP Server Configuration
  http_directory    = "http"
  http_bind_address = var.http_bind_address
  http_port_min     = var.http_server_port
  http_port_max     = var.http_server_port
  http_interface    = var.http_interface
  vm_interface      = var.vm_interface

  ## Boot Configuration
  boot_command = [
    "e<wait>",
    "<down><down><down><end>",
    "<bs><bs><bs><bs><wait>",
    "autoinstall ip=dhcp net.ifnames=0 biosdevname=0 ipv6.disable=1 ds='nocloud-net;s=${local.http_url}/' ---",
    "<wait><f10><wait>"
  ]

  boot_wait = "10s"

  ## SSH Configuration
  ssh_handshake_attempts    = 100
  ssh_username              = var.ssh_username
  ssh_password              = var.ssh_password
  ssh_private_key_file      = var.ssh_private_key_file
  ssh_clear_authorized_keys = true
  ssh_timeout               = "45m"
  ssh_agent_auth            = var.ssh_agent_auth

}