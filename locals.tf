locals {
  cluster    = data.terraform_remote_state.cluster.outputs.cluster
  project_id = data.terraform_remote_state.cluster.outputs.project_id
  region     = data.terraform_remote_state.cluster.outputs.region

  namespace = data.terraform_remote_state.consul.outputs.namespace

  host                   = data.terraform_remote_state.cluster.outputs.host
  cluster_ca_certificate = data.terraform_remote_state.cluster.outputs.cluster_ca_certificate
  access_token           = data.google_client_config.default.access_token
}
