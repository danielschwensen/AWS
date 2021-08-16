#!/bin/bash
yum update -y
yum install -y httpd
instanceId=$(curl http://169.254.169.254/latest/meta-data/instance-id)
echo "<h1>Hello World from $instanceId</h1>" > index.html
mv index.html /var/www/html/
systemctl start httpd
systemctl enable httpd
