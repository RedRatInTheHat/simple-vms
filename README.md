# simple-vms

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >=0.119.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >=0.119.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.vm](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_stopping_for_update"></a> [allow\_stopping\_for\_update](#input\_allow\_stopping\_for\_update) | Is it allowed to stop a VM instance to make changes | `bool` | n/a | yes |
| <a name="input_has_nat"></a> [has\_nat](#input\_has\_nat) | Is a public address provided. | `bool` | n/a | yes |
| <a name="input_image_family"></a> [image\_family](#input\_image\_family) | The family name of an image. Used to search the latest image in a family. | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of created virtual machine. | `string` | n/a | yes |
| <a name="input_instances_count"></a> [instances\_count](#input\_instances\_count) | Number of instances | `number` | n/a | yes |
| <a name="input_is_preemptible"></a> [is\_preemptible](#input\_is\_preemptible) | Is the instance preemptible. | `bool` | n/a | yes |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Metadata for user creation. | `object({ user-data = string })` | n/a | yes |
| <a name="input_platform_id"></a> [platform\_id](#input\_platform\_id) | The type of virtual machine to create. | `string` | n/a | yes |
| <a name="input_resources"></a> [resources](#input\_resources) | Resources for instances | <pre>object({<br>    cores         = number,<br>    memory        = number,<br>    core_fraction = number<br>  })</pre> | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | ID and zones of available subnets. | <pre>list(object({<br>    subnet_id   = string,<br>    subnet_zone = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_ips"></a> [vm\_ips](#output\_vm\_ips) | Private and public ips of created machines |