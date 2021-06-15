from ubuntu:18.04

RUN apt-get update && apt-get install --no-install-recommends -y \
	software-properties-common git gcc libc6-dev ca-certificates apt-utils curl
RUN apt-add-repository ppa:longsleep/golang-backports
RUN apt-get update && apt-get install --no-install-recommends -y golang-go=2:1.16-1longsleep1+bionic
WORKDIR /golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /golangci-lint v1.40.1

