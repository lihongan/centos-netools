FROM centos:7
MAINTAINER Hongan Li <hongli@redhat.com>
# install required tools for network testing
RUN yum -y update \
    && yum -y install which ethtool bind-utils tcpdump iproute iputils nmap-ncat net-tools \
    && yum clean all
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
