FROM node:latest

WORKDIR /home/src/app

COPY package.json .

RUN npm install -g gatsby-cli

RUN nvm install

COPY gatsby-config.js .

EXPOSE 9000

CMD ["gatsby", "develop", "-H", "51.210.103.111", "-p", "9000"]