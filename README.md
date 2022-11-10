## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.deployment](https://registry.terraform.io/providers/hashicorp/helm/2.6.0/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | Chart name, otherwise default helm template will be used | `string` | `""` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Chart version, required when chart is not empty | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | deployment name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to deploy | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Chart repository url, required when chart is not empty | `string` | `""` | no |
| <a name="input_sensitive_values"></a> [sensitive\_values](#input\_sensitive\_values) | Sensitive values to be passed to helm chart (will override values) | <pre>list(object({<br>    name  = string<br>    value = string<br>    type  = string<br>  }))</pre> | n/a | yes |
| <a name="input_values"></a> [values](#input\_values) | List YAML encoded values to be passed to chart | `list(string)` | n/a | yes |

## Outputs

No outputs.
