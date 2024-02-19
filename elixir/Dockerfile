FROM registry.docker.com/library/elixir:1.16.1-slim AS base
WORKDIR /app
RUn sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
RUN apt update -y && apt install time -y

FROM base AS final
COPY main.exs /app/main.exs
ENTRYPOINT ["/usr/bin/time", "--verbose", "elixir", "main.exs"]