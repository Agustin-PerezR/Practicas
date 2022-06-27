FROM node:carbon-alpine
RUN mkdir /my_app
COPY pagina.js /my_app
COPY package.json /my_app
WORKDIR /my_app
RUN npm install
EXPOSE 3000
CMD node pagina.js

