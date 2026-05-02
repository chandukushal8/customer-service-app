resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "customer-ng"
  node_role_arn   = aws_iam_role.worker_role.arn
  subnet_ids      = data.aws_subnets.subnets.ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }

  instance_types = ["t3.medium"]

  depends_on = [
    aws_eks_cluster.this,
    aws_iam_role_policy_attachment.worker_node_policy,
    aws_iam_role_policy_attachment.worker_cni_policy,
    aws_iam_role_policy_attachment.worker_ecr_policy
  ]
}
