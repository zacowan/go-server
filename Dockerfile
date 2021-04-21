FROM golang:1.16

WORKDIR /usr/src/go-server

# Get dependencies
RUN go get -u github.com/go-chi/chi/v5

COPY src/ .
