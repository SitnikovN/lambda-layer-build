FROM amazonlinux:2
RUN yum -y update && yum -y groupinstall "Development Tools" \
    && yum -y install openssl11 openssl11-devel bzip2-devel libffi-devel \
    && curl -O https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz \
    && tar xzf Python-3.10.0.tgz \
    && cd Python-3.10.0 \
    && ./configure --enable-optimizations \
    && make altinstall


RUN python3.10 -m pip install pip==23.1.2
RUN pip install virtualenv==20.23.0


