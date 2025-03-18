resource "aws_instance" "myec2" {
  ami           = "ami-04aa00acb1165b32a"
  instance_type = "t2.micro"
  key_name = "suraj-2025-kepair"

  tags = {
    Name = "server1"
  }
}
