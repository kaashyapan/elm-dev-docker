FROM node:latest

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apt-get update && apt-get install -y emacs sudo

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3000

WORKDIR /root

RUN yarn global add create-elm-app && \
    create-elm-app my-elm-project

CMD /bin/bash

# tail -f /dev/null
