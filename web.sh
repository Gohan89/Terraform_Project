#!/bin/bash
sudo apt update
sudo apt install -y apache2 unzip
sudo systemctl start apache2
sudo systemctl enable apache2
cd /tmp
wget https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip
unzip 2119_gymso_fitness.zip
sudo cp -r 2119_gymso_fitness/* /var/www/html/
sudo systemctl restart apache2


