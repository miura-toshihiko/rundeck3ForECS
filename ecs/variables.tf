
### circleCIのENVより読み込み

###  TF_VAR_access_key 
###  TF_VAR_secret_key
###  TF_VAR_tf_s3_backend

#variable "access_key" {}
#variable "secret_key" {}



# IAMユーザ一覧 TEST用
variable "iam_users" {
  type = "list"
  default = [
    "iam_user4",
    "iam_user5",
    "iam_user6",
  ]
}