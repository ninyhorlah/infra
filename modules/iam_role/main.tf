data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_partition" "current" {}

resource "aws_iam_role" "test_role" {
  name = var.ecr_iam_role

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "ecr:GetAuthorizationToken"
        Effect = "Allow"
        Sid    = "GetAuthorizationToken"
        Principal = {
          Service = "ecr.amazonaws.com"
        }
      },
      {
        Action = [
                "ecr:CompleteLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:InitiateLayerUpload",
                "ecr:BatchCheckLayerAvailability",
                "ecr:PutImage",
                "ecr:BatchGetImage"
            ]
        Effect = "Allow"
        Sid    = ""
        Principal = {
            Service = "ecr.amazonaws.com"
        }
      },
    ]
  })
}