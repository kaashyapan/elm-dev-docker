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
    create-elm-app /var/sample-elm-project

CMD cp -nr /var/sample-elm-project /root && \
	/bin/bash

# tail -f /dev/null
