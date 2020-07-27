FROM ubuntu:latest

LABEL maintainer="Mikhail <iamnotabot>"

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get upgrade -y && \
    apt-get install git maven openjdk-11-jdk -y && \
    apt-get clean && \
    mkdir -p /opt/artifact

WORKDIR /tmp/build
ADD get-builder.sh ./
RUN chmod +x+ get-builder.sh

CMD ["/tmp/build/get-builder.sh","/opt/artifact/"]
