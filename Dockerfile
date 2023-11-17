FROM node:12-slim

WORKDIR /use/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . ./

EXPOSE 3000

CMD [ "node", "app.js" ]
