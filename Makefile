
.PHONY: go-build
go-build:
	@echo "Build project binaries..."
	GO111MODULE=on CGO_ENABLED=0 go build -o echo-server -v main.go

.PHONY: build
build: go-build
	@echo "Build docker image..."
	docker build --tag miketonks/echo-server .
