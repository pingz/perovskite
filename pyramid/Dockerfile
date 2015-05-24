FROM centos:7
RUN localedef -i en_US -c -f UTF-8 en_US.UTF-8
## change locale
RUN sed -e 's/LANG=.*/LANG=en_US.UTF-8/' -i /etc/locale.conf
# this can't run because it depend on systemd which is not enabled.
# RUN localectl set-locale LANG=en_US.UTF-8
RUN yum -y update && yum clean all
RUN yum -y install python-pip gcc python-devel gmp-devel mariadb-devel
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple \
        sqlalchemy mysql-python pyramid pyramid_webassets

# default port for devlopement app to run
EXPOSE 6543
