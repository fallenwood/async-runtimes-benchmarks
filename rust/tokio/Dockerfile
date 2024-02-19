FROM registry.docker.com/library/debian:12 AS base
WORKDIR /app
RUN apt update -y && apt install time -y

FROM rust:1.76.0 AS build
WORKDIR /src
COPY . .
RUN cargo build --release

FROM base AS final
COPY --from=build /src/target/release/tokio /app/tokio
ENTRYPOINT ["/usr/bin/time", "--verbose", "./tokio"]
