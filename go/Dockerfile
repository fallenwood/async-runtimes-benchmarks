FROM debian:12 as base
WORKDIR /app
RUN apt update -y && apt install time -y

FROM golang:1.22 as build
WORKDIR /src
COPY go.mod /src/go.mod
COPY main.go /src/main.go
ENV CGO_ENABLED=0
RUN go build

FROM base as final
COPY --from=build /src/coroutines /app/coroutines
ENTRYPOINT ["/usr/bin/time", "--verbose", "./coroutines"]
