# Helm Charts Deployment Module

A simple terraform module that recieves a list of helm charts configuration and applies them to a k8s cluster

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.5.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/2.5.1/docs/resources/release) | resource |
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_file_documents.files](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/data-sources/file_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_manifests_files"></a> [additional\_manifests\_files](#input\_additional\_manifests\_files) | A list of additional kubernetes yaml files to be applied with the helm chart | `list(string)` | `[]` | no |
| <a name="input_additional_manifests_wait_deployment"></a> [additional\_manifests\_wait\_deployment](#input\_additional\_manifests\_wait\_deployment) | Waits for additional deployments to finisgh | `bool` | `true` | no |
| <a name="input_helm_charts"></a> [helm\_charts](#input\_helm\_charts) | Helm charts that will be provisioned on the kubernetes cluster | `list(any)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
