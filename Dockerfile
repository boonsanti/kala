FROM golang

WORKDIR /go/src/github.com/boonsanti/kala
COPY . .
RUN go build && mv kala /usr/bin

CMD ["kala", "run"]
EXPOSE 8000
