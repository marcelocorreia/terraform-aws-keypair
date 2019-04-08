data "external" "ssh-key" {
  count = "${var.create_key ? 1 : 0}"
  program = [
    "${path.module}/sshkey.sh",
    "${var.key_name}",
    "${var.key_path}",
    "${var.create_key}"
  ]
}

