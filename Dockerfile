FROM node:alpine

COPY  dist/* dist/*

EXPOSE 3000

ENTRYPOINT [node ./dist/apps/nft-bridge/main.js]
