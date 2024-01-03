resource "aws_security_group" "portfolio-cluster" {
  name        = "eks-portfolio-cluster"
  description = "Cluster communication with workers"
  vpc_id      = module.vpc.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-portfolio-cluster"
  }
}

resource "aws_security_group_rule" "portfolio-cluster-ingres-workstation-https" {
  cidr_blocks       = [local.workstation-public-cidr]
  description       = "Allow ingress traffic from workstation CIDR"
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.portfolio-cluster.id
}
