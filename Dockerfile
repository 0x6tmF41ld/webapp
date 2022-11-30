FROM ubuntu:18.04
MAINTAINER nephesh
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/0x6tmF41ld/static-website-example
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx-g 'daemon off;'
