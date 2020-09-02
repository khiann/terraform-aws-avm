############ terraform ############
resource "aws_secretsmanager_secret" "terraform" {
  name = "terraform"
}

resource "aws_secretsmanager_secret_version" "terraform_version" {
  secret_id     = aws_secretsmanager_secret.terraform.id
  secret_string = jsonencode(local.secret_terraform)
}

############ tfe_aws_keys ############
resource "aws_secretsmanager_secret" "tfe_aws_keys" {
  name = "tfe_aws_keys"
}

resource "aws_secretsmanager_secret_version" "tfe_aws_keys_version" {
  secret_id     = aws_secretsmanager_secret.tfe_aws_keys.id
  secret_string = jsonencode(local.secret_tfe_aws_keys)
}

############ vcs_oauth_token ############
resource "aws_secretsmanager_secret" "vcs_oauth_token" {
  name = "vcs_oauth_token"
}

resource "aws_secretsmanager_secret_version" "vcs_oauth_token_version" {
  secret_id     = aws_secretsmanager_secret.vcs_oauth_token.id
  secret_string = jsonencode(local.secret_vcs_oauth_token)
}

############ redlock ############
resource "aws_secretsmanager_secret" "redlock" {
  name = "redlock"
}

resource "aws_secretsmanager_secret_version" "redlock_version" {
  secret_id     = aws_secretsmanager_secret.redlock.id
  secret_string = jsonencode(local.secret_redlock)
}

############ okta ############
resource "aws_secretsmanager_secret" "okta" {
  name = "okta"
}

resource "aws_secretsmanager_secret_version" "okta_version" {
  secret_id     = aws_secretsmanager_secret.okta.id
  secret_string = jsonencode(local.secret_okta)
}

############ bitbucket ############
resource "aws_secretsmanager_secret" "vcs" {
  name = "vcs"
}

resource "aws_secretsmanager_secret_version" "vcs_version" {
  secret_id     = aws_secretsmanager_secret.vcs.id
  secret_string = jsonencode(local.secret_vcs)
}

