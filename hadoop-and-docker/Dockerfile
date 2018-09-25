FROM ubuntu:18.04

MAINTAINER Pschoe

USER root

RUN apt-get -y update
RUN apt-get -y install curl tar sudo openssh-server openssh-clients rsync
RUN apt-get -y update

# passwordless ssh
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys


# java 
	# download
	# PATH

# hadoop download

