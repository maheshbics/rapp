FROM node:14-alpine as node

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=node /app/build/ /usr/share/nginx/html
