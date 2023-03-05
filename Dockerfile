FROM golang:alpine

RUN go install go.k6.io/xk6/cmd/xk6@latest
RUN apk update && \
    apk add bash git make && \
    apk add --upgrade grep

RUN git clone https://github.com/grafana/xk6-websockets /home/alpine/xk6-websockets
WORKDIR /home/alpine/xk6-websockets
