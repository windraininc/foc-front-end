#!/bin/bash

CURRENT=`pwd`
FILENAME=$1
NGINX_CONF_DIR=/usr/local/etc/nginx
TARGET_DIR=$NGINX_CONF_DIR/servers

sudo cp "$CURRENT/$FILENAME" "$TARGET_DIR/$FILENAME"
if [ -a /usr/local/var/run/nginx.pid ]; then
    sudo nginx -s stop
fi
sudo nginx
