FROM golang:1.16-alpine

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY *.go ./
RUN go build -o /docker-gs-ping
EXPOSE 8080
CMD [ "/docker-gs-ping" ]
