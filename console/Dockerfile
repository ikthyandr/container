FROM debian:jessie
MAINTAINER ikthyandr "arnab.s@lowerentropy.com"

LABEL version=0.1
LABEL base="debian:jessie" application="lighttpd web server" purpose="lighttpd client for letsencrypt DV SSL casual installation"


RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/backports.list

RUN apt-get update \
	&& apt-get -y -f install certbot -t jessie-backports \
	&& apt-get -y -f install lighttpd \
	&& apt-get -y -f install mysql-server python-mysqldb

COPY cert-install.sh /
COPY cert-renew.sh /etc/cron.daily/

EXPOSE 80 443
