build:
	@go build -o sample_server cmd/shell/main.go

run: build
	@SAMPLE_SERVER_LOG_LEVEL=TRACE ./sample_server

test:
	@go test -cover ./...

lint:
	@golangci-lint run