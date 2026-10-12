
resource "aws_instance" "Web-Server" {
  ami = var.ami
  instance_type = var.Server_type
  user_data = var.User-Data
  tags = {
    Name = var.Server_Name
  }
}
