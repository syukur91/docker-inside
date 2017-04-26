FROM ubuntu:16.10

ADD . /api_server

WORKDIR /api_server

RUN ./docker-install.sh

RUN ./docker-compose-install.sh

EXPOSE 50051

ENTRYPOINT ./apiserver --config config/benchmark.config --proto config/benchmark.proto

