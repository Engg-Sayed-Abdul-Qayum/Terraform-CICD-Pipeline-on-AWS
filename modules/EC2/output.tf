
output "Server-Public-IP" {
  value = aws_instance.Web-Server.public_ip
}
