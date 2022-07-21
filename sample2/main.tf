module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./instance"
}