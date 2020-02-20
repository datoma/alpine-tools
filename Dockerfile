FROM alpine:latest
MAINTAINER Michael Hoffmann (https://github.com/datoma)

RUN apk --update add openssh nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat busybox-extras && rm -rf /var/cache/apk/*

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
RUN chmod +x /entrypoint.sh
