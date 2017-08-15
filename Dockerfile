FROM node:slim

MAINTAINER sunder.narayanaswamy@gmail.com

EXPOSE 3000

RUN yarn global add brunch elm elm-test elm-css elm-brunch elm-format@exp elm-oracle

RUN apt-get update && apt-get install -y emacs sudo python3-pip

RUN bash -c "pip3 install --upgrade pip awscli s3cmd"

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD /bin/bash

# tail -f /dev/null
