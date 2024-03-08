data "aws_eks_cluster" "cluster" {
  name = ""
}

data "aws_eks_cluster_auth" "cluster" {
  name = ""
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