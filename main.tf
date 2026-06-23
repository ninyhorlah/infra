module "ecr_repo" {
  source = "./modules/ecr"
  ecr_repository_name = var.ecr_repository_name
}

module iam_role {
  source = "./modules/iam_role"
  ecr_repository_policy_name = "clarity-ecr-repo-policy"
}