variable "eks_cluster_name" {
  description = "EKS cluster name"
  type = string
}

variable "eks_cluster_role" {
  description = "IAM role for EKS cluster"
  type = string
}

variable "eks_node_role" {
  description = "IAM role for EKS nodes"
  type = string
}

variable "az1" {
  description = "AZ1 subnet ID"
  type = string
}

variable "az2" {
  description = "AZ2 subnet ID"
  type = string
}

variable "az3" {
  description = "AZ3 subnet ID"
  type = string
}