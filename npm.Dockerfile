FROM alpine:3.15
RUN apk add --no-cache nodejs \
  && apk add --no-cache npm
