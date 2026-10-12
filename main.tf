
module "Web-Server-1" {
  source = "./modules/EC2"
  Server_type = "t2.medium"
  Server_Name = "Server-1"
}

module "Web-Server-2" {
  source = "./modules/EC2"
  Server_type = "t2.medium"
  Server_Name = "Server-2"
}

 