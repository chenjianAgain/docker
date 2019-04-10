FROM ubuntu:18.04

LABEL maintainer="ChenJian"

# Get Vapor repo including Swift
RUN apt-get -q update;
RUN apt-get -q install -y wget software-properties-common python-software-properties apt-transport-https;
RUN wget -q https://repo.vapor.codes/apt/keyring.gpg -O- | apt-key add -;
RUN echo "deb https://repo.vapor.codes/apt bionic main" | tee /etc/apt/sources.list.d/vapor.list;

# Installing Swift & Vapor
RUN apt-get update && \
    apt-get -y install swift vapor;

WORKDIR /vapor

RUN ["vapor", "--help"]
