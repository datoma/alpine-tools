FROM alpine:latest
MAINTAINER Michael Hoffmann (https://github.com/datoma)

ENTRYPOINT ["/entrypoint.sh"]

RUN apk --update add openssh nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat && rm -rf /var/cache/apk/*


COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
