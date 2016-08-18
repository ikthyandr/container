FROM ikthyandr/python-lighttpd
MAINTAINER ikthyandr "arnab.s@lowerentropy.com"

LABEL version=0.1
LABEL base="debian:jessie" application="console: python based web backend"

ENV DEBIAN_FRONTEND noninteractive
ENV MYSQL_ROOT_PASSWORD pass

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/backports.list

RUN apt-get update \
	&& apt-get -y -f install certbot -t jessie-backports \
	&& apt-get -y -q install mysql-server \
	&& apt-get -y install python-mysqldb

COPY cert-install.sh /
COPY cert-renew.sh /etc/cron.daily/
COPY ./console /opt/

EXPOSE 80 443
