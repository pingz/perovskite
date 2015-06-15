FROM centos:7
MAINTAINER Zheng, Ping <zp@pingz.biz>
## change locale
RUN localedef -i en_US -c -f UTF-8 en_US.UTF-8
RUN sed -e 's/LANG=.*/LANG=en_US.UTF-8/' -i /etc/locale.conf
# set timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# update
RUN yum -y update && \
    yum clean all
