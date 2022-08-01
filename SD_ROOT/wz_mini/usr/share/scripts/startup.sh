#!/bin/sh

sleep 15

[ -z "$GITHUB_AUTHORIZED_KEYS" ] || { mkdir -m 700 /root/.ssh; curl -L https://github.com/$GITHUB_AUTHORIZED_KEYS.keys >> /root/.ssh/authorized_keys; }

if [ ! -f /tmp/hosts ]; then
  echo "127.0.0.1 localhost" > /tmp/hosts
fi
mount --bind /tmp/hosts /etc/hosts

/opt/wz_mini/usr/share/scripts/snapshot /opt/wz_mini/www/snapshot.jpg &

/opt/wz_mini/tmp/.bin/crond -b -c /opt/wz_mini/etc/crontab/
