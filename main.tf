
module "Web-Server-1" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Web-Server-1"
}

module "Web-Server-2" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Web-Server-2"
}

module "Web-Server-3" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Web-Server-2"
}