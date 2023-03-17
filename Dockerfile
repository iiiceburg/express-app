FROM node:16.4.2-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm install pm2@latest -g
CMD npm run prod
EXPOSE 3000