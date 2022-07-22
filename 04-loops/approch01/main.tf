variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-031303182815afa6e"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-${count.index+1}"
  }
}

// count.index is used to give instance a count like there are multiple instances to give them a count eg.0,1,2,3