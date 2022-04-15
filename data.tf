data "terraform_remote_state" "cluster" {
  backend = "remote"
  config = {
    organization = var.organization
    workspaces = {
      name = var.cluster_workspace
    }
  }
}

data "terraform_remote_state" "consul" {
  backend = "remote"
  config = {
    organization = var.organization
    workspaces = {
      name = var.consul_workspace
    }
  }
}


data "google_client_config" "default" {}

data "google_container_cluster" "my_cluster" {
  name     = data.terraform_remote_state.cluster.outputs.cluster
  location = data.terraform_remote_state.cluster.outputs.region
}

