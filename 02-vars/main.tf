variable "a" {
  default = 100
}

// variable block is having one reference, here is reference

output "a" {
  value = var.a
}

// variable  in terraform can be accessed by var.var_name or ${var.var_name}

output "x" {
  value = "value of a = ${var.a}"
}

// If you access variable with any combination of other string then ${} is preferred

variable "b" {}

// this variable is declared in terraform.tfvars file

variable "c" {}

// this varible is taken from cli of terraform, terraform apply -auto-approve -var c=400

variable "d" {}

// this variable is taken from shell, export TF_VAR_d=500