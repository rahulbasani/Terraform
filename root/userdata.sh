#!/bin/bash
sudo su
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "The page was created by the user in  " > /var/www/html/index.html
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> /var/www/html/index.html