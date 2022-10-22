# AWS Terraform Account Bootstrap module.

Basic module to bootstrap a new AWS Account ready for use.

- [Overview](#overview)
- [References](#references)
- [Terraform Docs](#terraform-docs)

## Overview

This Module helps to bootstrap a new AWS account. This will add some baseline configurations like enabling S3 Block Public Access and Default EBS encryption to help secure workloads.
All resources are optional but by default this module will enable:

* Enable S3 Block Public Access
* Enable EBS Default Encryption
* Create a S3 bucket for S3 access logging
* Create a S3 bucket and DynamoDB table for Terraform State
* Create a default AWS Support role
* Enable Security Hub 
* Enable Guardduty
* Enable Macies
* Set a recommended account level password policy

## References

## Terraform-Docs

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.0 |

#### Providers

| Name | Version |
|------|---------|
| aws | ~> 4.0 |

#### Modules

| Name | Source | Version |
|------|--------|---------|
| s3_access_logging | ./modules/s3_access_logging | n/a |
| tf_state | ./modules/tf_state | n/a |

#### Resources

| Name | Type |
|------|------|
| [aws_accessanalyzer_analyzer.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer) | resource |
| [aws_ebs_encryption_by_default.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_encryption_by_default) | resource |
| [aws_guardduty_detector.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_iam_account_password_policy.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_account_password_policy) | resource |
| [aws_iam_role.support](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.support](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_macie2_account.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/macie2_account) | resource |
| [aws_s3_account_public_access_block.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_account_public_access_block) | resource |
| [aws_securityhub_account.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account) | resource |
| [aws_securityhub_standards_control.disabled](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_control) | resource |
| [aws_securityhub_standards_subscription.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access_analyzer_enabled | Boolean to enable/disable AWS Access Analyzer | `Bool` | `true` | no |
| account_level_security_hub_enabled | Boolean to enable/disable Security Hub at an account level | `Bool` | `true` | no |
| allow_users_to_change_password | Boolean to enable/disable IAM users to change their own password | `Bool` | `true` | no |
| block_public_access_enabled | Boolean to enable/disable S3 block public access | `Bool` | `true` | no |
| ebs_encryption_enabled | Boolean to enable/disable EBS encryption | `Bool` | `true` | no |
| guardduty_enabled | Boolean to enable/disable GuardDuty | `Bool` | `true` | no |
| hard_expiry | Boolean to enable/disable IAM password policy hard expiry | `Bool` | `true` | no |
| macie_enabled | Boolean to enable/disable Macie | `Bool` | `true` | no |
| max_password_age | Maximum password age in days | `number` | `90` | no |
| minimum_password_length | Minimum password length | `number` | `14` | no |
| name | Name of the DynamoDB table and S3 bucket used to store TF state | `string` | `"tf-state-bucket"` | no |
| password_reuse_prevention | Number of previous passwords to prevent reuse | `number` | `24` | no |
| require_lowercase_characters | Boolean to enable/disable lowercase characters in IAM password policy | `Bool` | `true` | no |
| require_numbers | Boolean to enable/disable numbers in IAM password policy | `Bool` | `true` | no |
| require_symbols | Boolean to enable/disable symbols in IAM password policy | `Bool` | `true` | no |
| require_uppercase_characters | Boolean to enable/disable uppercase characters in IAM password policy | `Bool` | `true` | no |
| s3_access_logs_enabled | Boolean to enable/disable S3 access logging | `Bool` | `true` | no |
| security_hub_standards | List of security hub standards to enable | `list(string)` | <pre>[<br>  "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"<br>]</pre> | no |
| support_role_enabled | Boolean to enable/disable support role | `Bool` | `true` | no |
| suppress_benchmarks | suppress security benchmarks in security hub | `map(string)` | `{}` | no |
| tf_state_enabled | Boolean to enable/disable TF state | `Bool` | `true` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->