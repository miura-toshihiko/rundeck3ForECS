# tfstateの設定
terraform {
  backend "s3" {
    encrypt = "true"
    region = "ap-northeast-1"

    ## backend内では変数使えない。パラメータとして、実行時にわたせとのこと
    ##bucket = "${var.tf_s3_backend}"
    bucket = "demo-tfstates2019"
    
    key = "ecs/terraform.tfstate"
    profile = "default"
  }
}



# AWS Providerの設定
provider "aws" {
  region = "ap-northeast-1"
  profile = "default"
 
}


# IAMユーザの設定
#resource "aws_iam_user" "iam_users" {
  #count = "${length(var.iam_users)}"
  #name = "${element(var.iam_users, count.index)}"
  #path = "/"
  #force_destroy = false
#}