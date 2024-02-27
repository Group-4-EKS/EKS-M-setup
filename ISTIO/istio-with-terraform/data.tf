data "aws_eks_cluster" "cluster" {
  name = "demo"
}

data "aws_eks_cluster_auth" "cluster" {
  name = "demo"
}
