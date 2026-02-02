
variable "region" { type = string }
variable "aws_profile" { type = string }
variable "eks_role_name" { type = string }
variable "cluster_name" { type = string }
variable "vpc_cidr" { type = string }
variable "vpc_name" { type = string }
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }
variable "availability_zones" { type = list(string) }
variable "instance_types" { type = list(string) }
variable "desired_size" { type = number }
variable "min_size" { type = number }
variable "max_size" { type = number }
variable "tags" { type = map(string) }
variable "nodes_role_name" { type = string }
variable "node_group_name" { type = string }
variable "capacity_type" { type = string }
variable "igw_name" { type = string }
variable "nat_name" { type = string }
variable "default_route_cidr" { type = string }
variable "private_route_table_name" { type = string }
variable "public_route_table_name" { type = string }
variable "coredns_addon_name" { type = string }
variable "kube_proxy_addon_name" { type = string }
variable "vpc_cni_addon_name" { type = string }
variable "oidc_client_ids" { type = list(string) }




