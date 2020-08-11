#!/bin/bash

### starting services at start container
echo 'export TERM=dumb' >> ~/.bashrc
echo '<br><b>nGinx for Docker</b><br>' >> /usr/share/nginx/html/index.html

### timezone done by volumes in docker-compose
# TZ=Europe/Kiev
# ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

shellinaboxd -t -b -p 12345 --no-beep -s '/top:nobody:nogroup:/:top'

service nginx start

# && tail -F /var/log/*.log

### for "daemon" mode by container
if [ "$1" = "-d" ]
 then
  while true
   do sleep 1000
  done
fi

### bash command line to debug
if [ "$1" = "-bash" ]
 then
  /bin/bash
fi

### for continuous run if needed
# exec "$@"
