FROM ikthyandr/python-lighttpd

WORKDIR "/opt"
RUN apt-get -y update \
  && apt-get -y install git
  
RUN git init \
  && git remote add origin master https://github.com/ikthyandr/console.git \
  && git pull origin master

EXPOSE 80 443
