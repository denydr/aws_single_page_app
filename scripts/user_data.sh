#!/bin/bash
yum update -y
# Install Apache HTTP Server
yum install -y httpd
# Start and enable the Apache HTTP Server to serve
# our html, css and js resources upon  request from browser
systemctl start httpd
systemctl enable httpd
# Messsage from the httpd server
echo "<h1>Hello from Denitsa's EC2 instance $(hostname -f)</h1>" > /var/www/html/index.html