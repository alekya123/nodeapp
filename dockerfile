FROM node:boron

#create app directory
WORKDIR /usr/src/app

#install app dependencies
COPY package.json .
#copy package.json package-lock.json ./

RUN npm install
#run npm install --only=production

#bundle app source
copy . .

ADD . /node/server.js

EXPOSE 3000
CMD ["node","server.js"]

