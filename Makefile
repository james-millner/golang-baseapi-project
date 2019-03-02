PACKAGE  = go-lang-web-app

init:
	go get ./...
	go get -u github.com/stretchr/testify/assert

clean:
	go clean

test:
	go test ./...

build:
	go build cmd/main/main.go

default: build