.PHONY: deps
deps:
		go mod download


.PHONY: fmt
fmt:
		go fmt  ./...


.PHONY: deps-cleanup
deps-cleanup:
		go mod tidy


# Runs cleanup
.PHONY: cleanup
cleanup: fmt deps-cleanup


# Runs tests in short mode, without database adapters
.PHONY: quicktest
quicktest:
		go test -failfast -short ./...


# Runs tests
.PHONY: test
test:
		go test ./...
