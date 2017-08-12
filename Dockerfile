FROM node:latest

MAINTAINER sunder.narayanaswamy@gmail.com

ENV HOME /root

# Install emacs & elm webpack starter

RUN apt-get update && apt-get install -y \
    emacs

RUN git clone https://github.com/moarwick/elm-webpack-starter my-elm-project &&
	cd cd my-elm-project &&
	rm -rf .git &&
	npm run reinstall
   
RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/* 

EXPOSE 8080

WORKDIR /root

CMD /bin/bash
	
# tail -f /dev/null
