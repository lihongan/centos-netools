FROM centos:8
MAINTAINER Hongan Li <hongli@redhat.com>
# install required tools for network testing
RUN yum -y update \
    && yum -y install which telnet curl openssl ethtool bind-utils tcpdump iproute iproute-tc iputils nmap-ncat perf net-tools \
    && yum clean all
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
