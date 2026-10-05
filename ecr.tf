data "aws_ecr_repository" "main" {
  name = format("%s/%s", var.cluster_name, var.service_name)
}