# Helm Charts Deployment Module

A simple terraform module that recieves a list of helm charts configuration and applies them to a k8s cluster

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/2.5.1/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_charts"></a> [helm\_charts](#input\_helm\_charts) | Helm charts that will be provisioned on the kubernetes cluster | `list(any)` | `[]` | no |
| <a name="input_k8s_master_auth_token"></a> [k8s\_master\_auth\_token](#input\_k8s\_master\_auth\_token) | n/a | `any` | n/a | yes |
| <a name="input_k8s_master_ca"></a> [k8s\_master\_ca](#input\_k8s\_master\_ca) | n/a | `any` | n/a | yes |
| <a name="input_k8s_master_endpoint"></a> [k8s\_master\_endpoint](#input\_k8s\_master\_endpoint) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
