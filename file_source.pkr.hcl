source "file" "meta_data" {
  source = "${path.root}/templates/meta-data.pkrtpl"
  target = "${path.root}/http/meta-data"
}

source "file" "user_data" {
  content = templatefile("${path.root}/templates/user-data.pkrtpl", {
    locale          = var.locale
    timezone        = var.timezone
    keyboard_layout = var.keyboard_layout
    ssh_username    = var.ssh_username
    hash_password   = local.hash_password
  })
  target = "${path.root}/http/user-data"
}