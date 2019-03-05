FROM alpine:latest

MAINTAINER Rick Yu <cosmtrek@gmail.com>

RUN apk update && apk add --no-cache build-base git autoconf automake gettext pcre-dev libtool asciidoc xmlto udns-dev c-ares-dev libev-dev libsodium-dev mbedtls-dev linux-headers && \
    git clone https://github.com/shadowsocks/shadowsocks-libev /tmp/shadowsocks-libev && \
    cd /tmp/shadowsocks-libev && git submodule update --init --recursive && \
    ./autogen.sh && ./configure && make && make install && \
    git clone https://github.com/shadowsocks/simple-obfs /tmp/simple-obfs && \
    cd /tmp/simple-obfs && git submodule update --init --recursive && \
    ./autogen.sh && ./configure && make && make install && \
    rm -rf /tmp/shadowsocks-libev && rm -rf /tmp/simple-obfs && \
    apk del build-base git autoconf automake gettext libtool asciidoc xmlto linux-headers

USER nobody

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 9000
ENV PASSWORD 123456
ENV METHOD chacha20
ENV TIMEOUT 3600
ENV DNS_ADDR 8.8.8.8
ENV DNS_ADDR_2 8.8.4.4

EXPOSE $SERVER_PORT/tcp
EXPOSE $SERVER_PORT/udp

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
