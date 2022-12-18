ARG GO_VERSION=1.16 
FROM golang:${GO_VERSION}
WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY *.go ./
RUN go build -o /docker-gs-ping
EXPOSE 8080
CMD [ "/docker-gs-ping" ]
