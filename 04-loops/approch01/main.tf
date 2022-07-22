variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-031303182815afa6e"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
  }
}