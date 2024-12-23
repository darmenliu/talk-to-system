.PHONY: build clean test run

# Build variables
BINARY_NAME=talk-to-system
MAIN_FILE=cmd/talk-to-system/main.go

build:
	go build -o bin/$(BINARY_NAME) $(MAIN_FILE)

clean:
	rm -rf bin/
	go clean

test:
	go test -v ./...

run:
	go run $(MAIN_FILE)

lint:
	golangci-lint run 