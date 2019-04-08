provider "aws" {
  region = "ap-southeast-2"
}

module "example" {
  source = "../"
  key_name = "new-key"
  key_path = "/tmp/new-key"
  create_key = true
}


