resource "aws_instance" "web" {
  count         = length(var.instance_types)
  ami           = "ami-031303182815afa6e"
  instance_type = var.instance_types[count.index]
  tags = {
    Name = "terraform-${count.index + 1}"
  }
}

variable "instance_types" {
  default = {
    instances = {
      t2.small = 2,
      t3.micro = 3
    }
  }
}