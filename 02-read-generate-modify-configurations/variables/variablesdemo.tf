provider "aws" {
  region     = "us-west-2"
  access_key = "111"
  secret_key = "aaa"
}

resource "aws_security_group" "var_demo" {
  name = "gino_security_group"

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    # cidr_blocks = ["116.30.45.50/32"]
    cidr_blocks = [var.vpn_ip]

  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

}
