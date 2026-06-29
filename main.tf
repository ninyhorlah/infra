data "aws_ecr_repositories" "ecr_repositories" {}

module "ecr_repo" {
  source = "./modules/ecr"
  for_each = toset(var.ecr_repository_name)
  ecr_repository_name = each.key
}

module "s3" {
  source = "./modules/s3"
}

module "iam_role" {
  source = "./modules/iam_role"
  ecr_iam_role = var.ecr_iam_role
}

module "eks" {
  source = "./modules/eks"
  eks_cluster_name = var.eks_cluster_name
  eks_cluster_role = var.eks_cluster_role
  eks_node_role = var.eks_node_role
  az1 = module.vpc.az1
  az2 = module.vpc.az2
  az3 = module.vpc.az3
}

module "vpc" {
  source = "./modules/vpc"
}
