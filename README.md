[![Docker Automated Build](https://img.shields.io/docker/automated/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/) [![Docker Build](https://img.shields.io/docker/build/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/) [![Docker Pulls](https://img.shields.io/docker/pulls/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/) [![Docker Pulls](https://img.shields.io/docker/stars/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/) [![Docker Pulls](https://img.shields.io/microbadger/layers/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/) [![Docker Pulls](https://img.shields.io/microbadger/image-size/datoma/alpine-tools?style=plastic)](https://hub.docker.com/r/datoma/alpine-tools/)

## Repo:
https://registry.hub.docker.com/v2/repositories/datoma/alpine-tools/tags/

## What
Alpine image with some basic network and other tools. Currently the tools are
- curl
- openssh
- nmap
- tcpdump


## Run
    docker run -d -p 2200:22 datoma/alpine-tools
get the passwords for "root" and user "user"

    docker logs <container_id>
login via ssh

    ssh [root]|[user]@<docker_ip>

## Credits
the entrypoint.sh is inspired by Fedora project https://raw.githubusercontent.com/fedora-cloud/Fedora-Dockerfiles/master/ssh/entrypoint.sh

## TODO
- ssh login rootand change permission in config

    sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
- use certs
- add telnet
- add "dockerloop"
