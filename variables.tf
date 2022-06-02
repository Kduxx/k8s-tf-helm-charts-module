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

variable "additional_manifests_wait_deployment" {
  description = "Waits for additional deployments to finisgh"
  type        = bool
  default     = true
}

variable "additional_manifests_files" {
  description = "A list of additional kubernetes yaml files to be applied with the helm chart"
  type        = list(string)
  default     = []
}
