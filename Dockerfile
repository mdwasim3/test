FROM centos:latest
MAINTAINER mdwasim3@gmail.com
RUN yum install -y httpd \
        zip \
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/pcoint.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip pcoint.zip
RUN cp -rvf pcoint/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
