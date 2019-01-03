FROM centos:centos7
MAINTAINER Hongan Li <hongli@redhat.com>
# install required tools for network testing
RUN yum -y install \
    && ethtool bind-utils tcpdum iproute iputils net-tools\
    && yum clean all
CMD ["/usr/bin/bash"]
