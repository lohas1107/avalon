FROM ubuntu:latest AS base
SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN apt update
RUN apt install -y make
RUN apt install -y curl

FROM base AS frontend
SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    && source ~/.bashrc && nvm install --lts && nvm use --lts

FROM frontend AS workspace
SHELL ["/bin/bash", "--login", "-c"]
WORKDIR /avalon