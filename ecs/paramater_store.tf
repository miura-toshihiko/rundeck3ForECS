resource "aws_ssm_parameter" "RUNDECK_GRAILS_URL" {
  name  = "RUNDECK_GRAILS_URLX"
  type  = "SecureString"
  value = "dummy"
  #value = "${logentries_log.test_func.token}"
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_URL" {
  name  = "RUNDECK_DATABASE_URLX"
  type  = "SecureString"
  value = "dummy"
  #value = "${logentries_log.test_func.token}"
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_USERNAME" {
  name  = "RUNDECK_DATABASE_USERNAMEX"
  type  = "SecureString"
  value = "dummy"
  #value = "${logentries_log.test_func.token}"
}
resource "aws_ssm_parameter" "RUNDECK_DATABASE_PASSWORD" {
  name  = "RUNDECK_DATABASE_PASSWORDX"
  type  = "SecureString"
  value = "dummy"
  #value = "${logentries_log.test_func.token}"
}
resource "aws_ssm_parameter" "RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKET" {
  name  = "RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKETX"
  type  = "SecureString"
  value = "dummy"
  #value = "${logentries_log.test_func.token}"
}

