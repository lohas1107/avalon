FROM ubuntu:latest AS base
SHELL ["/bin/bash", "--login", "-i", "-c"]
COPY .nvmrc .
RUN apt update
RUN apt install -y make
RUN apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    && source ~/.bashrc && nvm install

FROM base AS workspace
SHELL ["/bin/bash", "--login", "-c"]
WORKDIR /avalon