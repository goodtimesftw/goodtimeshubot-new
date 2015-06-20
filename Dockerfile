FROM node:latest
MAINTAINER bigbam505@gmail.com

# Setup the dependencies and project files
ADD . /hubot
WORKDIR /hubot
RUN npm install

# Setup the environment to run
ENV NODE_TLS_REJECT_UNAUTHORIZED 0

ENTRYPOINT bin/hubot
CMD --adapter slack

