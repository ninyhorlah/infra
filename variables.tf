variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = list(string) 
  default     = ["clarity_ecr_repo"]
}
