.PHONY: test cover

build:
	go build

test:
	go fmt ./...
	go vet ./...
	go test -v
	go test -v --race

cover:
	 go test -v -covermode=count -coverprofile=coverage.out
	 go tool cover -html=coverage.out