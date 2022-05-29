output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet-1-arn" {
  value = aws_subnet.subnet-1.arn
}

output "subnet-2-arn" {
  value = aws_subnet.subnet-2.arn
}