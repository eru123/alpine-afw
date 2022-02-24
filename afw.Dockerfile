FROM alpine:3.15
RUN apk add --no-cache nodejs \
    && apk add --no-cache npm \
    && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories \
    && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache mongodb \
    && apk add --no-cache mongodb-tools \
    && apk add --no-cache openrc \
    && mkdir -p /data/db/ \
    && chown root /data/db \
    && rc-update add mongodb default \
    && node -v \
    && npm -v

EXPOSE 27017