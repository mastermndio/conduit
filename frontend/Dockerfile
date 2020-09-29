FROM node:10

WORKDIR /home/node/app
ADD src ./src
ADD public ./public
COPY package.json package-lock.json project-logo.png ./

RUN npm install

ENTRYPOINT npm start

