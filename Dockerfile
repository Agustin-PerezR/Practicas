FROM node:carbon-alpine
ARG FECHA
ENV FECHA=$MY_DATE
ARG ID_HASH
ENV ID_HASH=$IDHASH
RUN mkdir /my_app
COPY pagina.js /my_app
COPY package.json /my_app
WORKDIR /my_app
RUN npm install
EXPOSE 3000
CMD node pagina.js
