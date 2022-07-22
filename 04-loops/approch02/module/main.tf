resource "aws_instance" "web" {
  ami           = "ami-031303182815afa6e"
  instance_type = "t2.micro"
  tags = {
    Name = var.nametag
  }
}

variable "nametag" {}