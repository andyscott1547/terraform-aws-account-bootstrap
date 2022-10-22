# Basic Example

## Usage 

```terraform
module "tf_state" {
  source  = "andyscott1547/remote-state/aws"
  version = "1.2.2"
  name    = "tf-state-bucket"
}
```

## Terraform Docs

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.0 |

#### Providers

No providers.

#### Modules

| Name | Source | Version |
|------|--------|---------|
| tf_state | ../../ | n/a |

#### Resources

No resources.

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | value for the region | `string` | `"eu-west-1"` | no |
| tags | value for the tags | `map(string)` | `{}` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->