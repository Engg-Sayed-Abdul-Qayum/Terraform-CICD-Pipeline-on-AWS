
resource "aws_instance" "Web-Server" {
  ami = var.ami
  instance_type = var.Server_type
  tags = {
    Name = var.Server_Name
  }
}
