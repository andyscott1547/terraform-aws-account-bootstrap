# /modules/tf_state/locals.tf

locals {
  name = "${var.name}-${data.aws_caller_identity.current.account_id}"
}