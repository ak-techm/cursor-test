variable "name" {
  description = "EKS cluster name."
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS control plane."
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for the EKS cluster (typically private subnets)."
  type        = list(string)
}

variable "cluster_endpoint_public_access" {
  description = "Whether the EKS cluster endpoint is publicly accessible."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "Allowed CIDRs to reach the public EKS endpoint (if enabled)."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "enable_irsa" {
  description = "Enable IAM Roles for Service Accounts (IRSA)."
  type        = bool
  default     = true
}

variable "node_group_instance_types" {
  description = "Managed node group instance types."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_group_min_size" {
  description = "Managed node group minimum size."
  type        = number
  default     = 1
}

variable "node_group_desired_size" {
  description = "Managed node group desired size."
  type        = number
  default     = 2
}

variable "node_group_max_size" {
  description = "Managed node group maximum size."
  type        = number
  default     = 4
}

variable "tags" {
  description = "Common tags."
  type        = map(string)
  default     = {}
}

