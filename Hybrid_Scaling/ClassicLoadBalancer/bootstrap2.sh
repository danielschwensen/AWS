#!/bin/bash
yum install -y httpd php git

cd /var/www/html

wget https://raw.githubusercontent.com/danielschwensen/AWS/master/Hybrid_Scaling/Load_Template/LV2008.jpg
wget https://raw.githubusercontent.com/danielschwensen/AWS/master/Hybrid_Scaling/Load_Template/index.php

sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
