FROM node:alpine

COPY  dist/* dist/*

RUN npm install

EXPOSE 3000

ENTRYPOINT [node ./dist/apps/nft-bridge/main.js]
