FROM golang

RUN apt-get update

COPY main.go /go/main.go

RUN  CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o api main.go

EXPOSE 8080/tcp

CMD ./api