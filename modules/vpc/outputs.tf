output "vpc_id" {
  value = aws_vpc.tf_vpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnet" {
  value = aws_subnet.private_subnet[*].id
}