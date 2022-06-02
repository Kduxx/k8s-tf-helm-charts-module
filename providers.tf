terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.5.1"
    }
  }
}

provider "helm" {
  kubernetes {
    host                   = var.k8s_master_endpoint
    cluster_ca_certificate = base64decode(var.k8s_master_Ca)
    token                  = var.k8s_master_auth_token

  }
}
