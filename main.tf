provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "example" {
  name = var.ecr_repository_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.example.repository_url
}
