<!-- Auto generated file, please refer to README.yml -->
# terraform-aws-keypair

---
[![shield](https://img.shields.io/github/forks/marcelocorreia/terraform-aws-ssh-keypair.svg)](https://img.shields.io/github/forks/marcelocorreia/terraform-aws-ssh-keypair.svg)
[![shield](https://img.shields.io/github/release/marcelocorreia/terraform-aws-ssh-keypair.svg)](https://img.shields.io/github/release/marcelocorreia/terraform-aws-ssh-keypair.svg)
---
### TLDR;
- [Overview](#overview)
- [Description](#description)
- [Usage](#usage)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [License](#license)

### Overview
TODO:// Overview






### Usage
```hcl-terraformprovider "aws" {
  region = "ap-southeast-2"
}

module "example" {
  source     = "../"
  key_name   = "new-key"
  key_path   = "/tmp/new-key/"
  create_key = true
}

```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_key | Default true | string | `"true"` | no |
| key\_name | Key Name | string | n/a | yes |
| key\_path |  | string | `"Full path I.e: /tmp/my-key"` | no |

## Outputs

| Name | Description |
|------|-------------|
| key\_name | Key pair name |



<!-- Apache License -->
### License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

Copyright [2015] 

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
    
<!-- -->




[docs]: https://your.docs.com

[github]: https://github.com/marcelocorreia

[linkedin]: https://www.linkedin.com/in/linkedinUser/

[website]: https://your.website.com

[slack]: https://your.slack.com/

[email]: EMAIL@CHANGE.ME


