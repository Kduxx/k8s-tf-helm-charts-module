variable "k8s_master_ca" {

}

variable "k8s_master_endpoint" {

}

variable "k8s_master_auth_token" {}

variable "helm_charts" {
  description = "Helm charts that will be provisioned on the kubernetes cluster"
  type        = list(any)
  default     = []
}
