variable "key_name" {
  description = "Key Name"
}

variable "key_path" {
  default = "Full path I.e: /tmp/my-key"
}

variable "create_key" {
  default = true
  description = "Default true"
}
