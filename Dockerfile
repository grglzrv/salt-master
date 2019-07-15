FROM centos:7
MAINTAINER georgi_lazarov@starsgroup.com


RUN yum clean all && \
      yum install -y yum install epel-release && \
      yum install -y https://repo.saltstack.com/yum/redhat/salt-repo-2018.3-1.el7.noarch.rpm && \
      yum update -y && \
      yum install -y sudo git tmux vim salt-master python-pip net-tools nmap && \
      yum clean all

RUN pip install --upgrade pip && \
    pip install GitPython 


EXPOSE 4505
EXPOSE 4506
