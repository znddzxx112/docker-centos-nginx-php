FROM centos:latest
MAINTAINER znddzxx112 <znddzxx112@163.com>

# add nginx rep
COPY nginx.repo /etc/yum.repos.d/

# install php php-fpm nginx
RUN yum update -y \
&& yum install -y openssh-clients gcc gcc-c++ kernel-devel pcre pcre-devel zlib zlib-devel openssl openssl-devel \
&& yum install -y php lighttpd-fastcgi php-cli php-mysql php-gd php-imap php-ldap \
&& yum -y install php-odbc php-pear php-xml php-xmlrpc php-mbstring  \
&& yum -y install php-mcrypt php-mssql php-snmp php-soap  \
&& yum -y install php-tidy php-common php-devel php-fpm

# install nginx
RUN  yum -y install nginx 

# cp nginx file
# RUN rm -v /etc/nginx/conf.d/defaul.conf
ADD default.conf /etc/nginx/conf.d/

# make code dir
RUN mkdir -p /app && rm -rf /var/www/html && ln -s /app /var/www/html

# cp src /app
# expose ports
EXPOSE 80

# nginx php-fpm self start
RUN rm -v /etc/rc.d/rc.local
ADD rc.local /etc/rc.d/

# rc.local +x
RUN chmod +x /etc/rc.d/rc.local

# run scripts
# ENTRYPOINT ["/opt/bin/start.sh"]

