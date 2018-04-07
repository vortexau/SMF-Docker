FROM php:5.6.35-apache-jessie
MAINTAINER james.mclean@gmail.com

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80/tcp


CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
