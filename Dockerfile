FROM golang:1.8-alpine

RUN apk add --no-cache git docker
RUN go get github.com/yudai/gotty

ENTRYPOINT gotty --title-format "Panux Demo" -w docker run -it -m 100m panux/panux:x86_64
