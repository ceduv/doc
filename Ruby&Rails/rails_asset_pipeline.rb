#====================================
#           RUBY & RAILS

#------------------------------------
#           ASSET PIPELINE


# SERT A GERER CSS ET JS
# sprockets-rails gem implementé par defaut
rails new appname --skip-sprockets


#------------------------------------


en dev      # plusieurs fichiers pour debugé plus facilement
en prod     # 1 fichier css + 1 js , compilé ds public/asset (gestion par defaut)


#------------------------------------
#               CSS


# ds app/assets/stylesheets/application.rb
require_tree .
# va inclure tout les gichiers css dispo au meme niveau
require_self
# si des regles en dessous sont appliqié partout ?

# ds layouts/applications.erb
retirer la partie bootstrap qui peut ecraser les regles css
# js + css

AUTRES FICHIERS SCSS AU MEME NIVEAU
# scss = precocesseur sas ?
# css + fonction supllementaire dont regle imbriquées

SI ON AFFICHE LE CODE SOURCE , BCP DE FICHIERS CHARGE
#  signature generer auto
# par defaut il genere plusieurs css pour qu il soit plus facile de trouver
# d ou viennent les pb

# si cli
rails s -e production
# ds configuration secrets.yml
definir cle manuellement pour l envi de production
# copier test : secret_key_base
# + changer db pour use meme db en prod et en dev
production:
<<: *default
database: tuto
# relancer cli
rails s -e production
# si on regarde le code source de la page
# 1 seule fichier css /  idem js

on doit precompiler nos fichier css et js pour la prod
# en cli
rails assets:precompile
# genere des fichiers ds le dossiers public
# nouveau dossier asset avec fichier fusionné

# si on relance le serveur en prod il charge les nouveau fichier compilé

###***
# ds config/environments/development.rb
config.assets.debug = true
# avoir plusieurs fichier pour debug


#------------------------------------
#           GERER IMG

# ds asset/images on place notre fichier
# pb car en prod ou en dev l url peut changer

ex:
# ds demo.scss
body {
    background:url(/images/image.jpg);
}
# ds l inspecteur, ds la partie network error not found

# HELPERS
image-url("rails.png")      return url (/assets/rails.png)
# genere url
image-path("rails.png")     return "assets/rails.png"
# genere le chemin
asset-url()
asset-path()
# si fichier present a la racine du dossier asset

# ds demo.scss
body {
    background:image-url("ruby.jpg");
}

# si en cli
rails assets:precompile
# genere un fichier de l image ds le dosssier public/assets

# EN VUE
# on place un logo ds le fichier assets/images
# ds la vue home.html.erb
<%= image_tag 'ruby-logo.png', width: 100 % >


###***
# par defaut rails ne compile que les fichiers du nom de application
# et generes des erreures  si autre fichier ex: admin.css
Asset was not declared to be precompiled in prod
add 'Rails.application.config.assets.precompile += %w (admin.css)'
# COPY
Rails.application.config.assets.precompile += %w (admin.css)
# to initializers/assets.rb
# aussi ici qu on ajoutera d autres dossiers a copiler si besoin ex avec << emoji.image_path
# en cli relancer serveur
rails s


#------------------------------------
#               JS

# ds assets/javascripts/application.js
require jquery
require jquery_ujs  # permet support sur lien data-
require turbolink   # navigation ajax
# peut genere des collision avec js car ne raffraichit
# pas la page
require_tree .      # inclure les autres fichier
# generer en coffee

# ds gemfile on peut voir les differentes gem
# permetant de gerer js coffee etc
uglifier # genre un code plus petit
coffee-rails
jquery
turbolink ...
# tt ca sert a la compilation de assets

# le fichier cable.js sert au websocket ???

#------------------------------------
#         LIBRARY EXT

ex: bootstrap
# ds admin.css
require bootstrap
# on prend le css sur bootstrap
# ds lib/assets ici qu on met les assets externes a l appli
# on cree un stylesheets/bootstrap.css ds lequel on copie le css
# on relance le serveur bootstrap est chargé

# vendor/assets
# plutot utilisé par les gems externes


#------------------------------------
#        CONFIG

# POUR NE PAS GENRE LES FICHIERS PAR DEFAUT
# CSS COFFEE
# ds config/application.rb
config.generators.assets = false
# si on genere un nouveau controller , pas de fichier
# "poubelle" generé

# possibiliter de changer de sous domaine ???
config.action_controller.asset_host ='cdn.monsuperdomain.fr'
# des qu on utileras des tag il essairai de chargé ces fichiers
# possibilite de le gerer ds l environement en dev ou prod