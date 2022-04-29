FROM ttbb/base:jdk17

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ENV BKVM_HOME /opt/sh/bkvm

ARG version=3.1.1

RUN wget https://github.com/diennea/bookkeeper-visual-manager/releases/download/v$version/bkvm-$version.zip && \
unzip bkvm-$version.zip && \
mv bkvm-$version bkvm && \
rm -rf bkvm-$version.zip

WORKDIR /opt/sh/bkvm
