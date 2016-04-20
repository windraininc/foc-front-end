#!/bin/bash

CURRENT=`pwd`

sudo cp $CURRENT/nginx.conf /etc/nginx/conf.d/nginx.conf
sudo service nginx start
