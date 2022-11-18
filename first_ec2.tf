provider "aws" {
    region = "us-west-2"
    access_key = "accessKey"
    secret_key = "secretKey"
}

resource "aws_instance" "myec2" {
  ami = "ami-0d593311db5abb72b"
  instance_type = "t2.micro"
}