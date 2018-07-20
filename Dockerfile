FROM crystallang/crystal:latest
MAINTAINER Jade D. Kharats <jade.kharats@gmail.com>

ADD . /app
WORKDIR /app

# Install dependencies
RUN shards install

# Build our app
RUN shards build --production

EXPOSE 3000

CMD ./bin/romanweb