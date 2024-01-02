resource "aws_eks_cluster" "portfolio-cluster" {
  name     = "portfolio-cluster"
  role_arn = aws_iam_role.portfolio-cluster.arn

  vpc_config {
    subnet_ids         = module.vpc.public_subnets
    security_group_ids = [aws_security_group.portfolio-cluster.id]
  }

  depends_on = [
    aws_iam_role_policy_attachment.portfolio-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.portfolio-cluster-AmazonEKSServicePolicy
  ]
}
