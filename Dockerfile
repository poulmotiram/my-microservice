# ubuntu based nodejs and microservice container
FROM ubuntu:15.04
MAINTAINER poulmotiram@gmail.com

RUN apt-get update && apt-get install -y nodejs nodejs-legacy npm
RUN apt-get clean

COPY ./package.json src/

RUN cd src && npm install

COPY . /src

WORKDIR src/

CMD ["npm", "start"]