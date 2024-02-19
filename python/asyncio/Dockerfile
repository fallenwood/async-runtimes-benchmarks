FROM registry.docker.com/library/python:3.12.2-bookworm as base
WORKDIR /app
RUN apt update -y && apt install time -y

FROM base as final
COPY main.py /app/main.py
ENTRYPOINT ["/usr/bin/time", "--verbose", "python", "main.py"]
