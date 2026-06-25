data "aws_ecr_repositories" "ecr_repositories" {}

module "ecr_repo" {
  source = "./modules/ecr"
  ecr_repository_name = [for repo in data.aws_ecr_repositories.ecr_repositories.names : repo if repo != var.ecr_repository_name]
}
