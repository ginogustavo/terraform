### Variables assignation:

- Environment variables
- Command Line flags
- From a file
- Variable defaults

1. export TF_VAR_instancetype="t2.nano"

2. Even if you have default value you can overide variables' values with command line:

```sh
terraform plan -var="instancetype=t2.small"
```

- Also if you dont have any value in your variable file like this

```terraform
variable "instancetype" {}
```

- and you dont add the paramenter in the command

```sh
terraform plan
```

- It will ask you for the values in the CLI.

```sh
var.instancetype
  Enter a value:
```

3. Create a new file: terraform.tfvars, if you create a different name you need to manually configure it in the command flag:

```sh
terraform plan -var-file="custom.tfvars"
```

You can use it for other environment(stg, pre prod maybe)

4. Create vaues in variable in a separate files:

```terraform
variable "instancetype" {
  default = "t2.micro"
}
```
