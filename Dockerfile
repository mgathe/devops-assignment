FROM node:alpine

COPY . .

EXPOSE 3000

ENTRYPOINT ["node","./dist/apps/nft-bridge/main.js"]
