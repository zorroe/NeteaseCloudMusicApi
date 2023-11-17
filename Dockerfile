FROM node:16.18.0

WORKDIR /use/src/app

COPY package*.json ./

RUN npm install --registry https://registry.npm.taobao.org --only=production --force

COPY . ./

EXPOSE 3000

CMD [ "node", "app.js" ]
