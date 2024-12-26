resource "aws_instance" "my_vm" {
  ami           = "ami-0c2b8ca1dad447f8a"  # Ubuntu 20.04 LTS 
  instance_type = "t2.micro"  # Free Tier
}