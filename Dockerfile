FROM node:latest

WORKDIR /home/src/app

COPY package.json .

COPY package-lock.json .

RUN npm ci

RUN npm i

RUN npm install -g gatsby-cli

COPY gatsby-config.js .

EXPOSE 9000

CMD ["gatsby", "develop", "-H", "0.0.0.0"]
