resource "aws_iam_role" "portfolio-cluster" {
  name = "eks-portfolio-cluster-role"
  assume_role_policy = jsonencode({
    "Version" = "2012-10-17",
    "Statement" = [
      {
        "Effect" = "Allow",
        "Principal" = {
          "Service" = "eks.amazonaws.com"
        },
        "Action" = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "portfolio-cluster-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.portfolio-cluster.name
}

resource "aws_iam_role_policy_attachment" "portfolio-cluster-AmazonEKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.portfolio-cluster.name
}

# If no loadbalancer was ever created in this region, then this following role is necessary
#resource "aws_iam_role_policy" "portfolio-cluster-service-linked-role" {
#  name = "service-linked-role"
#  role = aws_iam_role.portfolio-cluster.name
#
#  policy = jsonencode({
#    "Version" = "2012-10-17",
#    "Statement" = [
#      {
#        "Effect" = "Allow",
#        "Action" = "iam:CreateServiceLinkedRole",
#        "Resource" = "arn:aws:iam::*:role/aws-service-role/*"
#      },
#      {
#        "Effect" = "Allow",
#        "Action" = [
#          "ec2:DescribeAccountAttributes"
#        ],
#        "Resource" = "*"
#      }
#    ]
#  })
#}
