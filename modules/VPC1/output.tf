output "US-vpc" {
  value = aws_vpc.US-vpc.id
}

# output "EU-vpc" {
#   value = aws_subnet.EU-Subnet.id
# }

output "US-SG" {
  value = aws_security_group.US-SG.id
}

# output "EU-SG" {
#   value = aws_security_group.EU-SG.id
# }