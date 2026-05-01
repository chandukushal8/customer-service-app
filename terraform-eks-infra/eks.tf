resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = data.aws_subnets.subnets.ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]
}
