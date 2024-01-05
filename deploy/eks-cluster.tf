resource "aws_eks_cluster" "portfolio-cluster" {
  name     = "portfolio-cluster"
  role_arn = aws_iam_role.portfolio-cluster.arn

  vpc_config {

    endpoint_private_access = false
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]

    subnet_ids = [
      aws_subnet.private-us-east-1a.id,
      aws_subnet.private-us-east-1b.id,
      aws_subnet.public-us-east-1a.id,
      aws_subnet.public-us-east-1b.id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.portfolio-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.portfolio-cluster-AmazonEKSServicePolicy
  ]
}
