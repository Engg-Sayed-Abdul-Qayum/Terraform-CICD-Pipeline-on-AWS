
resource "aws_instance" "Web-Server" {
  ami = var.ami
  instance_type = var.Server_type
  user_data = var.User-Data
  key_name = var.Key-pair
  associate_public_ip_address = true
  subnet_id = var.US-Subnet-ID
  
    tags = {
    Name = var.Server_Name
  }
}


 

 