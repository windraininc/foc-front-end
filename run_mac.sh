#!/bin/bash

CURRENT=`pwd`
FILENAME=$1
NGINX_CONF_DIR=/usr/local/etc/nginx
TARGET_DIR=$NGINX_CONF_DIR/servers

if [ ! -f "$CURRENT/$FILENAME" ]; then
    echo "[WARNING] passing nginx configure is not a file."
    exit -1
fi
sudo cp "$CURRENT/$FILENAME" "$TARGET_DIR/$FILENAME"
if [ ! -a /usr/local/var/run/nginx.pid ]; then
    sudo nginx
fi
sudo nginx -s reload
