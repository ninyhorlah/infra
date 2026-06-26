variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = list(string) 
  default     = ["clarity_ecr_repo"]
}

variable "ecr_iam_role" {
  description = "The role for the ECR repository"
  type        = string 
  default     = "clarity_ecr_role"
}
