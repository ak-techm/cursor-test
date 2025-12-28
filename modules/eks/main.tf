module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  enable_irsa = var.enable_irsa

  cluster_endpoint_public_access       = var.cluster_endpoint_public_access
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs

  cluster_addons = {
    coredns = {}
    kube-proxy = {}
    vpc-cni = {}
  }

  eks_managed_node_groups = {
    default = {
      name            = "${var.name}-ng"
      instance_types  = var.node_group_instance_types
      min_size        = var.node_group_min_size
      desired_size    = var.node_group_desired_size
      max_size        = var.node_group_max_size
      subnet_ids      = var.subnet_ids
    }
  }

  tags = var.tags
}

