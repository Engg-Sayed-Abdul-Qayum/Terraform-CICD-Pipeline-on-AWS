
module "Web-Server-1" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Server-1"
}

module "Web-Server-2" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Server-2"
}

 module "Web-Server-4" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Server-01"
}


 module "Web-Server-5" {
  source = "./modules/EC2"
  Server_type = "t3.micro"
  Server_Name = "Server-11"
}

 
 