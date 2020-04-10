FROM crystallang/crystal:0.34.0 AS builder

RUN mkdir /app
COPY . /app/

WORKDIR /app

RUN crystal build src/load_generator.cr --static

FROM alpine:3.11

COPY --from=builder /app/load_generator /load_generator

CMD ["/load_generator"]