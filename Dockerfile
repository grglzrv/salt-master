FROM centos:7
MAINTAINER georgi_lazarov@starsgroup.com


RUN yum clean all && \
      yum install -y yum install epel-release && \
      yum install -y https://repo.saltstack.com/yum/redhat/salt-repo-2018.3-1.el7.noarch.rpm && \
      yum update -y && \
      yum install -y sudo git vim salt-master python-pip net-tools nmap screen jq && \
      yum clean all

RUN pip install --upgrade pip && \
    pip install GitPython boto psycopg2-binary lxml


EXPOSE 4505
EXPOSE 4506
