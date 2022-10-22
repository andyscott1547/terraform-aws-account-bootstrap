# examples/basic/main.tf

module "tf_state" {
  module "account-bootstrap" {
    source  = "andyscott1547/account-bootstrap/aws"
    version = "0.1.1"
  }
}

