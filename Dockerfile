FROM centos
MAINTAINER Philip Mischenko <ph.sethz@gmail.com>

RUN yum -yqq update

RUN yum install curl