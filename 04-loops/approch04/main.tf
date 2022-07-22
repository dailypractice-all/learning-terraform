module "ec2" {
  for_each = var.instances
  source = "./module"
  instance_type = each.key
  instance_count = each.value
}

variable "instances" {
  default = {
    "t2.small" = 2,
    "t3.micro" = 3
  }
}