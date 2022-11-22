provider "aws" {
  region     = "us-east-1"
  access_key = "111"
  secret_key = "aaa"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc = true
}

