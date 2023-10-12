FROM node:18-alpine

LABEL maintainer="Sean <sean@kineviz.com>"

#app directory
WORKDIR /data

RUN mkdir -p /data
VOLUME /data

# Install cors-anywhere#docker
RUN yarn add github:code4demo/cors-anywhere#docker

EXPOSE 8080

#For Release 
ENV NODE_ENV=production
ENV NODE_ENV=8080

ENTRYPOINT ["node","/data/node_modules/cors-anywhere/server"]