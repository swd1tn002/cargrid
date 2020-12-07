FROM node:12-slim

WORKDIR /usr/src/app

ENV PORT=3000

COPY package*.json ./

RUN yarn install

COPY . ./

EXPOSE 3000

CMD [ "yarn", "start" ]
