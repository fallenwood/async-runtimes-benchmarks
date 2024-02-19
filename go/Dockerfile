FROM cb:base AS base
WORKDIR /app

FROM registry.docker.com/library/golang:1.22 as build
WORKDIR /src
COPY go.mod /src/go.mod
COPY main.go /src/main.go
ENV CGO_ENABLED=0
RUN go build

FROM base as final
COPY --from=build /src/coroutines /app/coroutines
ENTRYPOINT ["/usr/bin/time", "--verbose", "./coroutines"]
