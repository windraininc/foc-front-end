#!/bin/bash

CURRENT=`pwd`
FILENAME=$1

sudo cp $CURRENT/nginx.conf /etc/nginx/sites-available/$1
sudo ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1
sudo service nginx stop
sudo service nginx start
python -m SimpleHTTPServer 8000 &
