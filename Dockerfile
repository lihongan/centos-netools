FROM centos:7
MAINTAINER Hongan Li <hongli@redhat.com>
# install required tools for network testing
RUN yum -y update \
    && yum -y install ethtool bind-utils tcpdump iproute iputils net-tools \
    && yum clean all
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
