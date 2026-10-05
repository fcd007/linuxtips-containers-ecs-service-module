output "security_group_id" {
  description = "Security group attached to this ECS service's tasks."
  value       = aws_security_group.main.id
}

output "ecr_repository_url" {
  description = "ECR repository URL for this ECS service."
  value       = data.aws_ecr_repository.main.repository_url
}
