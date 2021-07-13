FROM alpine:edge

RUN apk update && apk add pdns-recursor && apk add tcpdump

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/pdns_recursor","--config-dir=/etc/pdns-recursor","--socket-dir=/etc/pdns-recursor"]
