#!/bin/bash

export AWS_DEFAULT_REGION=ap-northeast-1

# DBの環境変数を埋めるだけでstorage.providerもDBにしてくれる
#export RUNDECK_DATABASE_URL=postgresql_url
#export RUNDECK_DATABASE_USERNAME=rundeck
#export RUNDECK_DATABASE_PASSWORD=hogehoge
export RUNDECK_DATABASE_DRIVER=org.postgresql.Driver

# https://なアドレスを指定すればSSL対応される
#export RUNDECK_GRAILS_URL=https://rundeck.example.com
export RUNDECK_SERVER_ADDRESS=0.0.0.0

# https://rundeck.org/docs/administration/security/configuring-ssl.html#using-an-ssl-terminated-proxy
# に従って
# https://github.com/rundeck/rundeck/blob/v3.0.8/docker/official/lib/entry.sh#L34
# この設定を上書きしてELB側でSSLさせる
export RUNDECK_SERVER_FORWARDED=true

# execution logをS3に保存するための設定
#export RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_NAME=org.rundeck.amazon-s3
#export RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_BUCKET=rundeck-executionlog
#export RUNDECK_PLUGIN_EXECUTIONFILESTORAGE_S3_REGION=ap-northeast-1

# githbuログインのためPreauthenticated Modeを有効化する
# https://qiita.com/minamijoyo/items/52041ff8628263355810#preauthenticated-mode%E3%81%AE%E6%9C%89%E5%8A%B9%E5%8C%96
# https://github.com/rundeck/rundeck/blob/v3.0.8/docker/official/remco/templates/rundeck-config.properties#L22-L31
export RUNDECK_PREAUTH_ENABLED=true
export RUNDECK_PREAUTH_USERNAME_HEADER=X-Forwarded-User
export RUNDECK_PREAUTH_REDIRECT_LOGOUT=true

#exec "$@"
