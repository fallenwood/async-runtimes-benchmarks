FROM elixir:1.16.1 AS base
WORKDIR /app
RUN apt update -y && apt install time -y

FROM base AS final
COPY main.exs /app/main.exs
ENTRYPOINT ["/usr/bin/time", "--verbose", "elixir", "main.exs"]