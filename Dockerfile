FROM crystallang/crystal as builder
LABEL maintainer="Jade D. Kharats <jade.kharats@gmail.com>"

WORKDIR /app
COPY . .

RUN shards install
RUN shards build --production --static

FROM scratch
COPY --from=builder /app/bin/romanweb /romanweb

EXPOSE 3000
ENTRYPOINT ["/romanweb"]
