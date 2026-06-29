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

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type = string
  default = "clarity_eks_cluster"
}

variable "eks_cluster_role" {
  description = "IAM role for EKS cluster"
  type = string
  default = "clarity_eks_cluster_role"
}

variable "eks_node_role" {
  description = "IAM role for EKS nodes"
  type = string
  default = "clarity_eks_node_role"
}