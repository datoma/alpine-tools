#!/bin/bash

: ${SSH_USERNAME:=user}
: ${SSH_USERPASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)}
: ${SSH_ROOTPASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)}

__create_rundir() {
	mkdir -p /var/run/sshd
}

__create_user() {
	# Create a user to SSH into as.
	adduser $SSH_USERNAME -D
	echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd -d $SSH_USERNAME)
	echo ssh user password: $SSH_USERPASS
}

__create_root_pw() {
	# change root password
	echo  "root:$SSH_ROOTPASS" | chpasswd
	echo ssh user password: $SSH_ROOTPASS
}

__create_hostkeys() {
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
}

# Call all functions
__create_rundir
__create_hostkeys
__create_user
__create_root_pw

exec /usr/sbin/sshd -D -e "$@"
