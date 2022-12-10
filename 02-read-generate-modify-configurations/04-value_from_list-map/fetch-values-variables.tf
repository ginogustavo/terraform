provider "aws" {
  region     = "us-west-2"
  access_key = "aaa"
  secret_key = "111"
}

resource "aws_instance" "myec2" {
  ami = "ami-0d593311db5abb72b"

  #reference from map, using a key
  #instance_type = var.types["ap-south-1"]

  #reference from a list using a index
  instance_type = var.list[1]
}

variable "list" {
  type    = list(any)
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-2  = "t2.nano"
    ap-south-1 = "t2.small"
  }
}
