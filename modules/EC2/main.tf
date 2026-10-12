
resource "aws_instance" "Web-Server" {
  ami = var.ami
  instance_type = var.Server_type
  user_data = var.User-Data
  key_name = var.Key-pair
  region = var.region
    tags = {
    Name = var.Server_Name
  }
}
