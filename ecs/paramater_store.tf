resource "aws_ssm_parameter" "RUNDECK_GRAILS_URL" {
  name  = "RUNDECK_GRAILS_URL"
  type  = "SecureString"
  value = "${var.RUNDECK_GRAILS_URL}"

  
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_URL" {
  name  = "RUNDECK_DATABASE_URL"
  type  = "SecureString"
  value = "${var.RUNDECK_DATABASE_URL}"
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_USERNAME" {
  name  = "RUNDECK_DATABASE_USERNAME"
  type  = "SecureString"
  value = "${var.RUNDECK_DATABASE_USERNAME}"
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_PASSWORD" {
  name  = "RUNDECK_DATABASE_PASSWORD"
  type  = "SecureString"
  value = "${var.RUNDECK_DATABASE_PASSWORD}"
}
resource "aws_ssm_parameter" "RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKET" {
  name  = "RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKET"
  type  = "SecureString"
  value = "${var.RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKET}"
}
resource "aws_ssm_parameter" "OAUTH2_PROXY_GITHUB_ORG" {
  name  = "OAUTH2_PROXY_GITHUB_ORG"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_GITHUB_ORG}"

}
resource "aws_ssm_parameter" "OAUTH2_PROXY_GITHUB_TEAM" {
  name  = "OAUTH2_PROXY_GITHUB_TEAM"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_GITHUB_TEAM}"
  
}
resource "aws_ssm_parameter" "OAUTH2_PROXY_REDIREC_URL" {
  name  = "OAUTH2_PROXY_REDIREC_URL"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_REDIREC_URL}"
  
}

resource "aws_ssm_parameter" "OAUTH2_PROXY_COOKIE_DOMAIN" {
  name  = "OAUTH2_PROXY_COOKIE_DOMAIN"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_COOKIE_DOMAIN}"
  
}


resource "aws_ssm_parameter" "OAUTH2_PROXY_CLIENT_ID" {
  name  = "OAUTH2_PROXY_CLIENT_ID"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_CLIENT_ID}"
  
}

resource "aws_ssm_parameter" "OAUTH2_PROXY_CLIENT_SECRET" {
  name  = "OAUTH2_PROXY_CLIENT_SECRET"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_CLIENT_SECRET}"
  
}

resource "aws_ssm_parameter" "OAUTH2_PROXY_COOKIE_SECRET" {
  name  = "OAUTH2_PROXY_COOKIE_SECRET"
  type  = "SecureString"
  value = "${var.OAUTH2_PROXY_COOKIE_SECRET}"
  
}


