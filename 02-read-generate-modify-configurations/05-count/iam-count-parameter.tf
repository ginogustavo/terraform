provider "aws" {
  region     = "us-west-2"
  access_key = "aaa"
  secret_key = "111"
}

variable "elb_names" {
  type    = list(any)
  default = ["dev-lb", "staging-lb", "prod-lb"]
}

# Creating users
resource "aws_iam_user" "myuser" {
  name  = var.elb_names[count.index]
  count = 3
  path  = "/system/"
}

