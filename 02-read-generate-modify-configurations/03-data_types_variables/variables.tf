# variable "usernumber" {
#   type = number
# }

variable "elb_name" {
  type = string
  # "foobar-terraform-elb"
}

variable "az" {
  type = list(string)
  #   ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "timeout" {
  type = number
}

# samples
# https://github.com/terraform-aws-modules/terraform-aws-elb/blob/master/variables.tf
