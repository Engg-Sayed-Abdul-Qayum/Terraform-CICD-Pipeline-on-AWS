
output "Server-Public-IP" {
  value = aws_instance.Web-Server.public_ip
}



### -----------------------------------------

# output "US-vpc" {
#   value = aws_vpc.US-vpc.id
# }

# output "EU-vpc" {
#   value = aws_vpc.EU-vpc.id
# }