FROM ubuntu

MAINTAINER Me <xyz@example.com>

RUN bash
RUN apt-get update
RUN apt-get install -y golang vim curl wget
ADD /go /home/go

WORKDIR	/home/go
CMD go run server.go