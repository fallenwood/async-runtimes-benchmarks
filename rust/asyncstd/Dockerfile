FROM cb:base AS base
WORKDIR /app
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
RUN apt update -y && apt install time -y

FROM registry.docker.com/library/rust:1.76.0-slim AS build
WORKDIR /src
COPY . .
RUN cargo build --release

FROM base AS final
COPY --from=build /src/target/release/asyncstd /app/asyncstd
ENTRYPOINT ["/usr/bin/time", "--verbose", "./asyncstd"]
