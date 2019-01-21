## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| instance_type | aws instance type and class | string | - | yes |
| region | aws region | string | `eu-west-1` | no |
| secondary_region | Second AWS region | string | `us-east-1` | no |
