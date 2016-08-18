
#! /bin/sh

## version : 0.1 
## Release : 09th June 2016
## usage : call the script with desired domain name you wish to install letsencrypt ssl for- e.g. "sh cert-install.sh console.example.com"

conf_added="\\tssl.ca-file\=\"\\/etc\\/letsencrypt\\/live\\/$1\\/fullchain.pem\"\\n\\tssl.use-sslv2\=\"disable\"\\n\\tssl.use-sslv3\=\"disable\""



certbot certonly --standalone -d $1 --email "arnab.s@lowerentropy.com" --agree-tos
cat /etc/letsencrypt/live/*/cert.pem /etc/letsencrypt/live/*/privkey.pem > /etc/lighttpd/server.pem
sed -i s/\}/$conf_added\\n\}/ /etc/lighttpd/conf-available/10-ssl.conf
lighttpd-enable-mod ssl
