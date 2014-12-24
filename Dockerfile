From ubuntu:12.04
Maintainer Ryan Jones "ryan.jones26@gmail.com"
ENV REFRESHED_AT 2014-12-23
# install pre-requesite
RUN apt-get update && apt-get install libapache2-mod-php5 php5-cli php5-mysql php5-gd php5-snmp php-pear snmp graphviz php5-mcrypt php5-json subversionrrdtool fping imagemagick whois mtr-tiny nmap ipmitool python-mysqld libvirt-bin 
RUN mkdir -p /opt/observium && cd /opt
RUN  wget http://www.observium.org/observium-community-latest.tar.gz
RUN tar zxvf observium-community-latest.tar.gz && cd observium
RUN
# web port
EXPOSE 80
# ssl port
EXPOSE 443
# snmp
EXPOSE 161
EXPOSE 162
# mail
EXPOSE 25
