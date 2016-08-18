#! /bin/bash
# letencrypt cron file for renewal to be placed on /etc/cron.daily

server= ps aux | grep lighttpd | awk '{print $2}'
certbot -renew --pre-hook "kill $server" --renew-hook "cat /etc/letsencrypt/live/*/cert.pem /etc/letsencrypt/live/*/privkey.pem > /etc/lighttpd/server.pem"
service lighttpd start
