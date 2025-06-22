locals {
  use_iso_file  = var.iso_file != null ? true : false
  http_url      = join("", ["http://", coalesce(var.http_server_host, "{{ .HTTPIP }}"), ":", coalesce(var.http_server_port, "{{ .HTTPPort }}")])
  hash_password = bcrypt(var.ssh_password)
}
