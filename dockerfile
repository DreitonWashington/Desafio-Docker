FROM golang:alpine

WORKDIR /app
COPY . .

RUN go mod init hel  && go mod tidy\
    && go build -o /app/hello hello.go \
    && rm -rf /app/go.mod /app/go.sum /app/hello.go

ENTRYPOINT [ "/app/hello" ]