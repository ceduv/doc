#--------------------------------
#--------------UNIX--------------


#--------------MYSQL-------------

UPDATE + UPGRADE

sudo apt-get install mysql-server mysql-client libmysqlclient-dev

#   LANCER LE SERVEUR

sudo service mysql start

#   CONF DB

sudo mysql_secure_installation

#   MY SQL MONITOR

sudo mysql -u root

#   VOIR DB

show databases;

#   SE PLACER SUR UNE DB

use tuto;

#   VOIR TABLES

show tables;

#   AFFICHER LES CHAMPS

describe posts;

#   INSERER DU CONTENU

INSERT INTO posts SET name="Un titre d article", content="un tres tres longarticle", created_at="21-07-19",updated_at="21-07-19";

#   AFFICHER CONTENU

SELECT * FROM posts WHERE id ;

#   CREER / SUPPR DB

create database tuto;
drop database tuto;

#   QUITTER

quit



#----------------------------------
#        PB START RAILS DB

# MYSQL ACCESS DENIED 
STOP SERVER 
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test';
flush privileges;
exit
START SERVER
# SI PB 
su: warning: cannot change directory to /nonexistent:
sudo service mysql stop
sudo usermod -d /var/lib/mysql/ mysql
sudo service mysql start