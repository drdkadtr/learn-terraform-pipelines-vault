provider "google" {
  project = local.project_id
  region  = local.region
}

provider "kubernetes" {
  host                   = local.host
  cluster_ca_certificate = local.cluster_ca_certificate
  token                  = local.access_token
}

provider "helm" {
  kubernetes {
    host                   = local.host
    cluster_ca_certificate = local.cluster_ca_certificate
    token                  = local.access_token
  }
}
