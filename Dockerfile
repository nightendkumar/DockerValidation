FROM node:lts-alpine3.16

WORKDIR /usr/app

COPY package*.json .

COPY tsconfig.json .

COPY src ./src

RUN npm install

RUN npm run build

RUN rm -rf src

EXPOSE 3000

CMD [ "node", "bin/index.js" ]