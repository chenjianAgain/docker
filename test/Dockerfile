FROM ubuntu:18.04

LABEL maintainer="ChenJian"

# Install CURL
RUN apt-get update && \
    apt-get -y install curl gnupg;

# Get Vapor repo including Swift
RUN curl -sL https://apt.vapor.sh | bash;

# Installing Swift & Vapor
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E72020EB309474F;
RUN apt-get update && \
    apt-get -y install swift vapor;
