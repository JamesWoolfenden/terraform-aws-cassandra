
[![Slalom][logo]](https://slalom.com)

# terraform-aws-cassandra

[![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-cassandra.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-cassandra)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-cassandra.svg)](https://github.com/JamesWoolfenden/terraform-aws-cassandra/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

A project to set up infrastructure in AWS for an Apache Cassandra cluster, thia module will create Cassandra on Ec2 and autocluster the nodes.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "cassandra" {
  source     = "github.com/jameswoolfenden/terraform-aws-cassandra"
  instance_type = var.instance_type
  common_tags   = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allowed\_ranges | Allowed ranges that can access the cluster | `list` | <pre>[<br>  "0.0.0.0/0"<br>]<br></pre> | no |
| ami | Contains information to select desired AMI | `map` | <pre>{<br>  "filter": [<br>    "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server*"<br>  ],<br>  "owners": [<br>    "099720109477"<br>  ]<br>}<br></pre> | no |
| common\_tags | Implements the common tags scheme | `map(string)` | n/a | yes |
| instance\_type | aws instance type and class | `string` | n/a | yes |
| max\_size | Maximum number of instances | `number` | `3` | no |
| min\_size | Minimum number of instances | `number` | `3` | no |
| prefix | n/a | `string` | `"cass-"` | no |
| region | aws region | `string` | `"eu-west-1"` | no |
| scaling\_group | n/a | `string` | `"cassandra"` | no |
| ssh-inbound-range | CIDRs of address that are allowed to ssh in. | `list` | <pre>[<br>  "0.0.0.0/0"<br>]<br></pre> | no |
| subnet\_ids | List of subnet Ids | `list` | n/a | yes |
| vpc\_id | The id of the vpc for the security group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| launch\_configuration | n/a |
| scaling\_group | n/a |
| security\_group | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-cassandra/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-cassandra/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-cassandra&url=https://github.com/jameswoolfenden/terraform-aws-cassandra
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-cassandra&url=https://github.com/jameswoolfenden/terraform-aws-cassandra
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-cassandra
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-cassandra
[share_email]: mailto:?subject=terraform-aws-cassandra&body=https://github.com/jameswoolfenden/terraform-aws-cassandra
