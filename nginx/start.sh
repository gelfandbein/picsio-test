#!/bin/sh

### starting services at start container
echo "export TERM=dumb" >> ~/.bashrc
TZ=Europe/Kiev
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

service nginx start
shellinaboxd -t -b -p 12345 --no-beep -s '/top:nobody:nogroup:/:top' && tail -F /var/log/*.log

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
