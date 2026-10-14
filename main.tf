
# module "Web-Server-1" {
#   source = "./modules/EC2"
#   Server_type = "t3.micro"
#   Server_Name = "Server-1"
# }


# module "Web-Server-2" {
#   source = "./modules/EC2"
#   Server_type = "t3.micro"
#   Server_Name = "Server-2"
# } 

# module "Web-Server-3" {
#   source = "./modules/EC2"
#   Server_type = "t3.micro"
#   Server_Name = "Server-3"
#   US-SG = "aws_security_group.US-SG.id"
# } 

# module "Web-Server-4" {
#   source = "./modules/EC2"
#   Server_type = "t3.micro"
#   Server_Name = "Server-4"
#   EU-SG = "aws_security_group.EU-SG.id"
# } 

module "US-VPC" {
  source = "./modules/VPC1"

}

module "EU-VPC" {
  source = "./modules/VPC2"
  
}