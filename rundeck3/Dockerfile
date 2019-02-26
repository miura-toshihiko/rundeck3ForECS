FROM rundeck/rundeck:3.0.8

## soruce
## https://github.com/rundeck/rundeck/blob/master/docker/official/Dockerfile

USER root

RUN set -ex && \
    apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://github.com/h3poteto/ecs-task/releases/download/v0.1.2/ecs-task_v0.1.2_linux_amd64.zip && \
    unzip -d /usr/local/bin ecs-task_v0.1.2_linux_amd64.zip && \
    # https://github.com/rundeck-plugins/rundeck-s3-log-plugin
    # S3 pluginを用意
    mkdir libext && cd libext && \
    wget https://github.com/rundeck-plugins/rundeck-s3-log-plugin/releases/download/v1.0.5/rundeck-s3-log-plugin-1.0.5.jar && \
    # Slack pluginを用意
    wget https://github.com/higanworks/rundeck-slack-incoming-webhook-plugin/releases/download/v0.9.dev/rundeck-slack-incoming-webhook-plugin-0.9.jar && \
    chown -R rundeck:rundeck /home/rundeck/libext && \
    mkdir /etc/rundeck && \
    chown -R rundeck:rundeck /etc/rundeck


#ADD entrypoint.sh /home/rundeck/docker-lib/entrypoint.sh

#RUN chown rundeck:rundeck /home/rundeck/docker-lib/entrypoint.sh
#RUN chmod 744             /home/rundeck/docker-lib/entrypoint.sh

USER rundeck

EXPOSE 4440
ENTRYPOINT [ "docker-lib/entry.sh" ]
