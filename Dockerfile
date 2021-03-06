FROM debian:latest
MAINTAINER Kovacs Akos
RUN apt-get -yqq update
RUN apt-get -yqq update && apt-get -yqq install nginx
RUN apt-get –yqq install mc && apt-get –yqq install htop
RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
