FROM ubuntu:20.04

USER root

RUN apt-get -y update && apt-get -y install curl

RUN curl -s https://deb.nodesource.com/setup_18.x | bash

RUN apt-get update && apt-get install -y nodejs

COPY dist dist

WORKDIR /dist/apps/nft-bridge

RUN npm install

EXPOSE 3001

CMD node main.js
