FROM ikthyandr/python-lighttpd

WORKDIR "/opt"
RUN git init \
  && git remote add origin master https://github.com/ikthyandr/console.git \
  && git pull origin master

EXPOSE 80 443
