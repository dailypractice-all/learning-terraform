resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = "ami-031303182815afa6e"
  instance_type = var.instance_type
  tags = {
    Name = "terraform-${instance_count}"
  }
}

variable "instance_type" {}
variable "instance_count" {}