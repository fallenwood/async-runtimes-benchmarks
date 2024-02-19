FROM cb:base AS base
WORKDIR /app

FROM registry.docker.com/library/rust:1.76.0-slim AS build
WORKDIR /src
COPY . .
RUN cargo build --release

FROM base AS final
COPY --from=build /src/target/release/tokio /app/tokio
ENTRYPOINT ["/usr/bin/time", "--verbose", "./tokio"]
