FROM alpine
MAINTAINER Torsten Heinrich t.heinrich@live.de

RUN apk add --update \
    nodejs \
    nodejs-npm \
    python \
    make \
    g++ \
  && rm -rf /var/cache/apk/*

RUN npm install -g aglio@2.3.0

WORKDIR /docs

ENTRYPOINT ["aglio"]
