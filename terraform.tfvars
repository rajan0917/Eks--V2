
region             = "ap-south-1"
eks_role_name      = "eks-cluster-eks"
cluster_name       = "dev-eks"
aws_profile        = "default"
#cluster_name      = "eks_cluster"
vpc_cidr           = "10.0.0.0/16"
vpc_name           = "aws-eks-vpc"
public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets    = ["10.0.11.0/24", "10.0.12.0/24"]
availability_zones = ["ap-south-1a", "ap-south-1b"]
nodes_role_name    = "eks-node-group-nodes"
node_group_name    = "private-nodes"
capacity_type      = "ON_DEMAND"
instance_types     = ["t3.medium"]
desired_size       = 2
min_size           = 1
max_size           = 4
igw_name           = "igw"
nat_name           = "nat"
default_route_cidr = "0.0.0.0/0"
private_route_table_name = "private"
public_route_table_name  = "public"
coredns_addon_name       = "coredns"
kube_proxy_addon_name    = "kube-proxy"
vpc_cni_addon_name       = "vpc-cni"
oidc_client_ids          = ["sts.amazonaws.com"]
k8s_service_account      = "system:serviceaccount:default:aws-test"
test_role_name           = "test-oidc"
test_policy_name         = "test-policy"
test_policy_actions = [
  "s3:ListAllMyBuckets",
  "s3:GetBucketLocation"
]
test_policy_resources = [
  "arn:aws:s3:::*"
]

tags = {
  Project     = "EKS"
  Environment = "dev"
}
