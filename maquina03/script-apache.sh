#!/bin/bash
apt-get update
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql
sudo /etc/init.d/apache2 restart

#INSTALAR GIT
apt-get install -y git
cd /tmp
rm -rf iaw-practica-lamp
git clone https://github.com/josejuansanchez/iaw-practica-lamp.git

#COPIAMOS REPOSITORIO
cd iaw-practica-lamp 
cp src/* /var/www/html/

#MODIFICAR LA BASE DE DATOS
sed -i 's/localhost/192.168.33.11/' /var/www/html/config.php
chown www-data:www-data /var/www/html/* -R

#BORRAMOS EL INDEX.HTML
rm -rf /var/www/html/index.html