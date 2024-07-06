FROM node:20-alpine


RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY  package*.json ./

RUN npm ci --loglevel verbose --fetch-timeout=600000

COPY  . .

CMD ["node", "index.js"]
