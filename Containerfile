FROM ubi8/ubi:8.7
LABEL description=" Mi prueba de http"
MAINTAINER pescorza
RUN yum install -y httpd && yum clean all
EXPOSE 80
ENV LogLevel "debug"
COPY ./src/ /var/www/html/
COPY ./etc/ /etc/httpd/conf/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
