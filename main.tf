# AWS provider and region

data "aws_caller_identity" "current" {
}

locals {
  baseline_version = "v0.1.13"
  tags             = module.label.tags
}

module "label" {
  source  = "cloudposse/label/null"
  version = "0.16.0"
  tags = {
    "project"                   = "${var.project}"
    "security:data_sensitivity" = "${var.security-data_sensitivity}"
    "stack:region"              = "${var.stack-region}"
    "stack"                     = "${var.stack}"
    "stack:version"             = "${var.stack-version}"
    "stack:env:chg_control"     = "${var.stack-env-chg_control}"
    "stack:lifecycle"           = "${var.stack-lifecycle}"
    "stack:builder"             = "${var.stack-builder}"
    "stack:env"                 = "${var.stack-env}"
    "stack:owner"               = "${var.stack-owner}"
    "stack:support_group"       = "${var.stack-support_group}"
  }
}
