#This file outputs the VPC ID, public and private subnet IDs, and NAT Gateway IDs.

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "public_subnets" {
  description = "The public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "The private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ids" {
  description = "The IDs of the NAT Gateways"
  value       = aws_nat_gateway.this[*].id
}
