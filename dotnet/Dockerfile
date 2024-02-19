FROM cb:base AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
RUN apt update && apt install clang zlib1g-dev -y
COPY dotnet.csproj /src/dotnet.csproj
COPY Program.cs /src/Program.cs
RUN dotnet publish -c Release -o out

FROM base AS final
COPY --from=build /src/out/dotnet /app/dotnet
ENTRYPOINT ["/usr/bin/time", "--verbose", "./dotnet"]