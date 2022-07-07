FROM node:carbon-alpine
ARG FECHA
ENV FECHA=$DATE
ARG HASH
ENV HASH=$DATE
RUN mkdir /my_app
COPY pagina.js /my_app
COPY package.json /my_app
WORKDIR /my_app
RUN npm install
EXPOSE 3000
CMD node pagina.js
