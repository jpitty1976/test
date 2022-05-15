FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV path /usr/src/app/mode_modules/.bin:$PATH

COPY package*.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

EXPOSE 4000
CMD [ "npm", "start"]
