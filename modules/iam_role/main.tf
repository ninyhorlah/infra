data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_partition" "current" {}

data "aws_iam_policy_document" "repo_policy" {
  statement {
    actions   = ["ecr:CreateRepository", "ecr:ReplicateImage"]
    resources = ["arn:${data.aws_partition.current.partition}:ecr:${data.aws_region.current.region}:${data.aws_caller_identity.current.account_id}:repository/*"]
    effect = "Allow"
  }
}

resource "aws_iam_policy" "policy" {
   name        = "var.ecr_repository_policy_name"
   description = "Clarity ECR Repository Policy"
  policy = data.aws_iam_policy_document.repo_policy.json
}

resource "aws_iam_user_policy_attachment" "attachment" {
  user       = data.aws_caller_identity.current.user_id
  policy_arn = aws_iam_policy.policy.arn
}
