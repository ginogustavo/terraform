provider "aws" {
  region     = "us-west-2"
  access_key = "111"
  secret_key = "aaa"
}

variable "is-test" {
}

resource "aws_instance" "dev" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = "t2.micro"
  count         = var.is-test == true ? 1 : 0
}


resource "aws_instance" "prod" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = "t2.large"
  count         = var.is-test == false ? 1 : 0
}
