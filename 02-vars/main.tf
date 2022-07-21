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