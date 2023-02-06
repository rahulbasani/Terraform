#!/bin/bash
sudo su
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "The page was created by the user in  " > /var/www/html/index.html