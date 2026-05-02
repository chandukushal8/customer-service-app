# Existing VPC
data "aws_vpc" "existing" {
  id = var.vpc_id
}

# Subnets in the existing VPC
data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }
}
``
