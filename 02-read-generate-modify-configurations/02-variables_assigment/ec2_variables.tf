provider "aws" {
  region     = "us-west-2"
  access_key = "111"
  secret_key = "aaa"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = var.instancetype
}
