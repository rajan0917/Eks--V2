
region             = "ap-south-1"
cluster_name       = "dev-eks"
vpc_cidr           = "10.0.0.0/16"
vpc_name           = "aws-eks-vpc"
public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets    = ["10.0.11.0/24", "10.0.12.0/24"]
availability_zones = ["ap-south-1a", "ap-south-1b"]
instance_types     = ["t3.medium"]
desired_size       = 2
min_size           = 1
max_size           = 4
tags = {
  Project     = "EKS"
  Environment = "dev"
}
