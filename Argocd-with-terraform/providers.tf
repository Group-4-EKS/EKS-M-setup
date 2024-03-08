
provider "kubernetes" {
  host                   = local.host
  cluster_ca_certificate = local.certificate
  token                  = local.token
}

provider "kubectl" {
  host                   = local.host
  cluster_ca_certificate = local.certificate
  token                  = local.token
  load_config_file       = false
}

provider "helm" {
  host                   = local.host
  cluster_ca_certificate = local.certificate
  token                  = local.token
}

