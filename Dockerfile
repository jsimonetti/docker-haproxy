FROM haproxy:alpine

RUN apk add --no-cache iproute2

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
