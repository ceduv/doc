#--------------------------------
#--------------UNIX--------------


#--------------MYSQL-------------

UPDATE + UPGRADE

sudo apt-get install myslq-sever mysql-client libmysqlclient-dev

#   LANCER LE SERVEUR

sudo service mysql start

#   CONF DB

sudo mysql_secure_installation

#   MY SQL MONITOR

sudo mysql -u root

#   VOIR DB

show databases;

#   CREER / SUPPR DB

create database name;
drop database name;

#   QUITTER

quit
