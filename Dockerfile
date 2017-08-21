FROM alpine

LABEL maintainer="t.heinrich@live.de"
LABEL version="2.3.0"

# install all the dependencies
RUN apk add --update \
    nodejs \
    nodejs-npm \
    python \
    make \
    g++

# install aglio
RUN npm install -g aglio@2.3.0

# remove all the unnecessary packages again
RUN apk del \
    python \
    make \
    g++ \
  && rm -rf /var/cache/apk/*

WORKDIR /docs

ENTRYPOINT ["aglio"]
