resource "aws_instance" "web" {
  // count      = 0 ( we can make some condition to come with a value based on that this resource can be created
  ami           = "ami-031303182815afa6e"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable "instance_type" {
  default = null
}

