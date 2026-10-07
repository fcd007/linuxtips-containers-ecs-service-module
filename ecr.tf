resource "aws_ecr_repository" "main" {
  count = var.create_ecr_repository ? 1 : 0

  name = format("%s/%s", var.cluster_name, var.service_name)

  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

data "aws_ecr_repository" "existing" {
  count = var.create_ecr_repository ? 0 : 1

  name = format("%s/%s", var.cluster_name, var.service_name)
}

locals {
  ecr_repository_url = var.create_ecr_repository ? aws_ecr_repository.main[0].repository_url : data.aws_ecr_repository.existing[0].repository_url
}