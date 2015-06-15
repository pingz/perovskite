FROM pingz/centos:latest
MAINTAINER Zheng, Ping <zp@pingz.biz>

RUN yum -y install python-pip \
                   gcc \
                   python-devel

RUN mkdir -p /root/.pip
COPY pip.conf /root/.pip/pip.conf

RUN pip install setuptools \
                virtualenv

# setup default workspace.
VOLUME ["/app", "/venv"]
WORKDIR /app
