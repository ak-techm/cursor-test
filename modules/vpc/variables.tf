variable "name" {
  description = "VPC name."
  type        = string
}

variable "cidr" {
  description = "VPC CIDR block."
  type        = string
}

variable "azs" {
  description = "Availability zones to use."
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnet CIDRs (one per AZ)."
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDRs (one per AZ)."
  type        = list(string)
}

variable "database_subnets" {
  description = "Database subnet CIDRs (one per AZ)."
  type        = list(string)
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support in the VPC."
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Create NAT gateways for private subnets."
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Use a single NAT gateway (cheaper, less HA)."
  type        = bool
  default     = true
}

variable "public_subnet_tags" {
  description = "Extra tags to apply to public subnets."
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Extra tags to apply to private subnets."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Common tags."
  type        = map(string)
  default     = {}
}

