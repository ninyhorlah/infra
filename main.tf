data "aws_ecr_repositories" "ecr_repositories" {}

module "ecr_repo" {
  source = "./modules/ecr"
  for_each = toset(var.ecr_repository_name)
  ecr_repository_name = each.key
}

module "s3" {
  source = "./modules/s3"
}