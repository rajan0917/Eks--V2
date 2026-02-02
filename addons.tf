resource "aws_eks_addon" "coredns" {
  cluster_name = var.cluster_name
  addon_name   = var.coredns_addon_name
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name = var.cluster_name
  addon_name   = var.kube_proxy_addon_name
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name = var.cluster_name
  addon_name   = var.vpc_cni_addon_name
}
