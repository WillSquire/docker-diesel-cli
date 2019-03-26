FROM rustlang/rust:nightly
LABEL maintainer="Will Squire <will@willsquire.com>"
WORKDIR /app
RUN apt-get update -qq && \
    rm -rf /var/lib/apt/lists/* && \
    cargo install diesel_cli
ENTRYPOINT ["diesel"]
