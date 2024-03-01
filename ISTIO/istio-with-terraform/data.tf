data "aws_eks_cluster" "cluster" {
  name = "demo"
}

data "aws_eks_cluster_auth" "cluster" {
  name = "demo"
}

data "kubectl_file_documents" "book-info" {
  content = file("${path.module}/manifests/bookinfo.yaml")
}

data "kubectl_file_documents" "kiali" {
  content = file("${path.module}/manifests/kiali.yaml")
}

data "kubectl_file_documents" "prometheus" {
  content = file("${path.module}/manifests/prometheus.yaml")
}