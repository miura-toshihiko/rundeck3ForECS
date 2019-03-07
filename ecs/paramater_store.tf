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

