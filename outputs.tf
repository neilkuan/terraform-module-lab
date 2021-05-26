output "server_id" {
  description = "This is the output of the aws instance private id"
  value       = aws_instance.example_instance[*].id
}

output "private_ip" {
  description = "This is the output of the aws instance private ip"
  value       = aws_instance.example_instance[*].private_ip
}