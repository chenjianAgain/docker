FROM ubuntu:18.04

LABEL maintainer="ChenJian"

# Install CURL
RUN apt-get update && \
    apt-get -y install curl gnupg && \
    rm -rf /var/lib/apt/lists/*;

# Get Vapor repo including Swift
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 68980A0EA10B4DE8;
RUN curl -sL https://apt.vapor.sh | bash;
