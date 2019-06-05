.PHONY: deps
deps:
		go mod download


.PHONY: fmt
fmt:
		go fmt  ./...


# Runs tests in short mode, without database adapters
.PHONY: quicktest
quicktest:
		go test -failfast -short ./...


# Runs tests
.PHONY: test
test:
		go test ./...
