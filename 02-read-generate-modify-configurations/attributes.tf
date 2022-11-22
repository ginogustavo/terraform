terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "111"
  secret_key = "aaa"
}

resource "aws_eip" "lb" {
  vpc = true
}

output "eip" {
  value = aws_eip.lb #.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "gino-terraform-demo-nov213"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3 #.bucket_domain_name
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip#attributes-reference
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#attributes-reference
