FROM centos:9
RUN yum -y update && yum install -y httpd

WORKDIR /var/www/html
COPY . .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

