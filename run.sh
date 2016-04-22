#!/bin/bash

CURRENT=`pwd`
FILENAME=$1
NGINX_CONF_DIR=/etc/nginx
TARGET_DIR=$NGINX_CONF_DIR/sites-available
TARGET_LINK_DIR=$NGINX_CONF_DIR/sites-enabled

sudo cp "$CURRENT/$FILENAME" "$TARGET_DIR/$FILENAME"
if [ -f "$TARGET_DIR/$FILENAME" ]; then
    sudo ln -sf "$TARGET_DIR/$FILENAME" "$TARGET_LINK_DIR/$FILENAME"
fi
if [ -a /var/run/nginx.pid ]; then
    service nginx restart
else
    service nginx start
fi
