resource "aws_key_pair" "keypair" {
  depends_on = [
    "data.external.ssh-key",
  ]

  public_key = "${file(data.external.ssh-key.result.pub_keypath)}"
  key_name   = "${data.external.ssh-key.result["key_name"]}"
}

