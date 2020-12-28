FROM ubuntu:latest

MAINTAINER Marco Gracklauer <marco.gracklauer+dockerimage@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -y update
RUN apt-get -y install nodejs unzip
RUN npm install -g @ionic/cli

RUN curl -LSs https://github.com/Thyraz/Sonos-Kids-Controller/archive/master.zip -o master.zip && unzip master.zip && rm master.zip && mkdir /sonos-kids-controller && mv /Sonos-Kids-Controller-master/* /sonos-kids-controller
WORKDIR /sonos-kids-controller
RUN npm install -N
RUN ionic build --prod
CMD [ "node", "server.js" ]
EXPOSE 8200
