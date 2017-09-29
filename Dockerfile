FROM node

MAINTAINER sunder.narayanaswamy@gmail.com

RUN yarn global add brunch uglify-js recursive-uglify-js clean-css clean-css-cli \ 
                    elm elm-test elm-css elm-format@exp elm-oracle \
                    tern js-beautify jshint browser-sync
                    
RUN apt-get update && apt-get install -y emacs git

RUN apt-get -y autoremove && \
    apt-get -y clean  && \
    apt-get -y autoclean  && \
    rm -rf /var/lib/apt/lists/*

# http server to be tied to port 80
EXPOSE 3000

# websocket port for brunch watch
EXPOSE 9485

# websocket port for elm-live/livereload
EXPOSE 35729

WORKDIR /root

CMD /bin/bash

# tail -f /dev/null
