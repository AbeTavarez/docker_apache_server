# Use the official image as a parent image
FROM centos:latest
# Maintainer
MAINTAINER Abraham E Tavarez
#Install apache webserver
RUN yum -y install httpd
# sets the working directory to webroot
WORKDIR /var/www/html
# copy the code to the webroot directory
COPY html /var/www/html
# run the command to launch apache webserver daemon in the foreground
CMD ["/usr/sbin/http", "-D", "FOREGROUND"]
# expose port 80 for th website
EXPOSE 80