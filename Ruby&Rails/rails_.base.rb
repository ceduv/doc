#====================================
#           RUBY & RAILS

#------------------------------------

#               RAILS

gem install rails       # INSTALLER

rails --version         # VOIR LA VERSION

gem list                # VOIR SES GEMS


#               MYSQL

sudo apt-get install libmysqlclient-dev
                     mysql-server
                     mysql-client

# lancer serveur + créer la db pour projet rails


#------------------------------------

#         PREMIERES COMMANDES


rails new Projetname --database=mysql

# rajoute les gem necessaire pour gerer la database
# flag --database    =  mysql
#                       sqlite
#                       postgresql


#           CONFIGURER DATABASE

projet/conf/database.yml    # sytnhaxe yaml

username : # infos
password : # infos
developement:
 database : # infos

#           CONFIGURER DEVELOPEMENT.RB

config/environment/developement.rb
#config.file_watcher = ActiveSupport::EventedFileUpdateChecker
config.file_watcher = ActiveSupport::FileUpdateChecker


#           LANCER LE SERVEUR


# se placer ds le fichier
rails server            # lancer server locale
/ rails s               # par defaut port : 3000
puma                    # idem mais dossier mis ajour a chaque refresh

rails s - b 0.0.0.0     # lancer server

# page
localhost:3000


#-------------------------------------------------

# voir les routes

http://localhost:3000/rails/info/routes


#           VS CODE

# CONF HTML TO ERB

# Enabling Emmet:
# Go to your settings File>Preferences>Settings
# in json file
"emmet.includeLanguages": { "html.erb":"html" }