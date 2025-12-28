output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID."
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR."
}

output "public_subnet_ids" {
  value       = module.vpc.public_subnets
  description = "Public subnet IDs."
}

output "private_subnet_ids" {
  value       = module.vpc.private_subnets
  description = "Private subnet IDs."
}

output "database_subnet_ids" {
  value       = module.vpc.database_subnets
  description = "Database subnet IDs."
}

