# tfstateの設定
terraform {
  backend "s3" {
    encrypt = "true"
    region = "ap-northeast-1"
    bucket = "${var.tf_s3_backend}"
    key = "ecs/terraform.tfstate"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
  }
}



# AWS Providerの設定
provider "aws" {
  region = "ap-northeast-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}


# IAMユーザの設定
resource "aws_iam_user" "iam_users" {
  count = "${length(var.iam_users)}"
  name = "${element(var.iam_users, count.index)}"
  path = "/"
  force_destroy = false
}