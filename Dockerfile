from ubuntu:18.04

RUN apt-get update && apt-get install --no-install-recommends -y \
	software-properties-common git gcc libc6-dev ca-certificates apt-utils
RUN apt-add-repository ppa:longsleep/golang-backports
RUN apt-get update && apt-get install --no-install-recommends -y golang-go
RUN GOPATH=/golangci-lint GO111MODULE=on go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.31.0

