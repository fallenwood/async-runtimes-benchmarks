FROM registry.docker.com/library/python:3.12.2-bookworm as base
WORKDIR /app
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
RUN apt update -y && apt install time -y

FROM base as final
COPY main.py /app/main.py
ENTRYPOINT ["/usr/bin/time", "--verbose", "python", "main.py"]
