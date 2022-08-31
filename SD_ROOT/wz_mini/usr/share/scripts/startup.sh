#!/bin/sh

sleep 15

if [ ! -f /tmp/hosts ]; then
  echo "127.0.0.1 localhost" > /opt/wz_mini/tmp/.storage/hosts
fi
mount --bind /opt/wz_mini/tmp/.storage/hosts /etc/hosts

/opt/wz_mini/usr/share/scripts/snapshot /opt/wz_mini/www/snapshot.jpg &
