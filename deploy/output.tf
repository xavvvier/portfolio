output "workstation-public-cidr" {
  value = local.workstation-public-cidr
}

output "cluster-name" {
  value = aws_eks_cluster.cluster.name
}
