FROM node:carbon-alpine
ARG FECHA=$MY_DATE
ENV FECHA=$MY_DATE
ARG ID_HASH=$IDHASH
ENV ID_HASH=$IDHASH
RUN mkdir /my_app
COPY pagina.js /my_app
COPY package.json /my_app
RUN yarn install
COPY . /usr/src/app
RUN MY_DATE=$MY_DATE yarn build
RUN IDHASH=$IDHASH yarn build
WORKDIR /my_app
RUN npm install
EXPOSE 3000
CMD ["yarn", "node pagina.js" ]
