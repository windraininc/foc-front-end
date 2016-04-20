#!/bin/bash

CURRENT=`pwd`
FILENAME=$1
TARGET_DIR=/etc/nginx/sites-available
TARGET_LINK_DIR=/etc/nginx/sites-enabled

sudo cp "$CURRENT/$FILENAME" "$TARGET_DIR/$FILENAME"
if [ -f "$TARGET_DIR/$FILENAME" ]; then
    sudo ln -sf "$TARGET_DIR/$FILENAME" "$TARGET_LINK_DIR/$FILENAME"
fi
sudo service nginx stop
sudo service nginx start
