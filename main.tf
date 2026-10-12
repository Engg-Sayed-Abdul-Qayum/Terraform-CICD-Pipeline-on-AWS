
module "Web-Server-1" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Web-Server-1"
  User-Data = ""
}

module "Web-Server-2" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Web-Server-2"
}