#!/bin/bash
yum install -y httpd php git

cd /var/www/html

wget https://raw.githubusercontent.com/danielschwensen/AWS/master/Hybrid_Scaling/ClassicLoadBalancer/LV2008.jpg
mv LV2008.jpg image.jpg
wget https://raw.githubusercontent.com/danielschwensen/AWS/master/Hybrid_Scaling/ClassicLoadBalancer/index.php
mv /var/www/html/htaccess /var/www/html/.htaccess

sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
