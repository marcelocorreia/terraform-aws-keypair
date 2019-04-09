output "key_name" {
  value = "${data.external.ssh-key.result["key_name"]}"
  description="Key pair name"
}