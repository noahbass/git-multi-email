# Dockerfile for preparing and running tests

FROM alpine:3.6

RUN apk --update upgrade && \
    apk add --no-cache git curl tar

WORKDIR /app

COPY . /app

RUN ["sh", "./test/setup.sh"]

ENTRYPOINT ["sh", "./test/test.sh"]
