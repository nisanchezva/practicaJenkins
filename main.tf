resource "aws_instance" "my_vm" {
  ami           = "ami-065deacbcaac64cf2"  # Ubuntu 20.04 LTS 
  instance_type = "t2.micro"  # Free Tier
}