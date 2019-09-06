from ubuntu:18.04

RUN apt-get update
RUN apt-get install --no-install-recommends -y golang-1.10 git ca-certificates

