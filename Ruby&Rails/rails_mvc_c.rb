#====================================
#           RUBY & RAILS

#------------------------------------
#               MVC

#------------------------------------
#            CONTROLLERS


# permet de decouper son code

# controller = classe contenant methode appeler
ACTION


***
# chacun des pages du sites conrespondra
# a une action cree dans un controller
ex:
class PagesController < ApplicationController
    def salut           # page 1
        # ACTION
    end
    def home            # page 2
        # ACTION
    end
end
# A LA FIN DE L EXECUTION DE SES ACTIONS
# RENVOI LA VUE CORRESPONDANTE
# FICHIER ERB QUI CORRESPOND A
# NOM ACTIONS NOM CONTROLLER

# PROPRIETE D INSTANCE DU CONTROLLER
# ACCESSIBLE A LA VUE


#------------------------------------


convention :

pages_controller.rb     # 1er mot = l element au
                        # pluriel + _controller.rb

variables au controller # alleger la vue
                        # le + possible

TOUTES LES METHODES ONT UNE VUE !!!


#------------------------------------


# controller dont doivent heriter les autres
app/controllers/application_controller.rb

# nos classes controllers créés heriteront
# de se controller qui heritera lui meme de
ActionController::Base # appartenant a rails

controller user             # gerer des utilisateurs
controller post             # gerer articles
...


#           CREER UN CONTROLLER


# creer fichier
pages_controller.rb

# inser:
class PagesController < ApplicationController   # herite de
    # creation de differente methode == ACTION
    # indique ce que l on doit faire
    def salut
    end
end

# pas besoin ici de preciser ce que fait salut
# rails par de la convention que
# TOUTES LES METHODES ONT UNE VUE !!!

methodes params             # permet de recupere les parametre

puts param.inspect          # dans le controller salut
# quand on charge la page renvoi sur le serveur
# les differents parametres entré
# controller:page   action:salut   name:cedric

puts param[:name].inspect
# renvoi le param name

# propriete d instance appelable depuis la vue
@name = params[:name]

# chemin controller ds application.rb
# avec parametre
# <%= salut_path(name:'cedric') %>


