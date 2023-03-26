#!/bin/bash

# update apt list
sudo apt update

# install nginx
sudo apt install nginx-light

# insert VM name into index.html
sed -e "s/nginx\!/${1}/gi" /var/www/html/index.nginx-debian.html | sudo tee /var/www/html/index.html

# restart nginx
sudo systemctl restart nginx.service
