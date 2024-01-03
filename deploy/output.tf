output "workstation-public-cidr" {
  value = local.workstation-public-cidr
}

output "cluster-name" {
  value = module.eks.cluster_name
}
