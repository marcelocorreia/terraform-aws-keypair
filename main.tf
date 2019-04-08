resource "aws_key_pair" "keypair" {
  public_key = "${file("${var.key_path}.pub")}"
  key_name = "${var.key_name}"
}


