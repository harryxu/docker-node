FROM node:10-alpine

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
    && apk del .gyp

COPY ./.yarnrc /.yarnrc
