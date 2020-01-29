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
