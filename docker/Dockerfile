FROM debian:stretch
LABEL maintainer="AnonPay Developers <dev@anonpay.tech>"
LABEL description="Dockerised AnonPayCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
