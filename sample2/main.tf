module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./instance"
  SGID   = module.sg.SGID
}

terraform {
  backend "s3" {
    bucket = "terraform-b-1996"
    key    = "sample2/terraform.tfstate"
    region = "us-east-1"
  }
}