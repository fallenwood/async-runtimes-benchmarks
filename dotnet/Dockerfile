FROM debian:12 AS base
WORKDIR /app
RUN apt update && apt install time

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
RUN apt update && apt install clang zlib1g-dev -y
COPY dotnet.csproj /src/dotnet.csproj
COPY Program.cs /src/Program.cs
RUN dotnet publish -c Release -o out

FROM base AS final
COPY --from=build /src/out/dotnet /app/dotnet
ENTRYPOINT ["/usr/bin/time", "--verbose", "./dotnet"]