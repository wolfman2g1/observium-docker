From centos:centos7
Maintainer Ryan Jones "ryan.jones26@gmail.com"
ENV REFRESHED_AT 2014-12-23
# install pre-requesite
RUN yum -y -q upgrade
RUN rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
RUN rpm -Uvh http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install wget.x86_64 httpd.x86_64 php.x86_64 php-mysql.x86_64 php-gd.x86_64 php-snmp.x86_64 vixie-cron.x86_64.rpm
RUN yum -y install php-mcrypt.x86_64 net-snmp.x86_64 net-snmp-utils.x86_64 graphviz.x86_64 subversion.x86_64 mysql-server.x86_64 mysql.x86_64 rrdtool.x86_64
RUN yum -y install fping.x86_64 ImageMagick.x86_64 jwhois.x86_64 nmap.x86_64 ipmitool.x86_64 php-pear.noarch MySQL-python.x86_64
RUN yum -y install yum install libvirt
# web port
EXPOSE 80
# ssl port
EXPOSE 443
# snmp
EXPOSE 161
EXPOSE 162
# mail
EXPOSE 25
