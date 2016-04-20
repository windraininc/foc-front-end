#!/bin/bash

CURRENT=`pwd`
FILENAME=$1

sudo cp $CURRENT/nginx.conf /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
sudo service nginx stop
sudo service nginx start
