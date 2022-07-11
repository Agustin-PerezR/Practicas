FROM node:carbon-alpine
ARG FECHA=${MY_DATE}
ENV FECHA=${MY_DATE}
ARG ID_HASH={$IDHASH}
ENV ID_HASH={$IDHASH}
RUN FECHA=${MY_DATE} yarn build
RUN ID_HASH=${ID_HASH} yarn build
RUN mkdir /my_app
COPY pagina.js /my_app
COPY package.json /my_app
WORKDIR /my_app
RUN npm install
EXPOSE 3000
CMD node pagina.js
