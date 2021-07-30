#====================================
#           RUBY & RAILS

#------------------------------------
#             FORMATS

# GENERER D AUTRES FORMATS EX : JSON XML


#------------------------------------
#         ARTICLE FORMAT


respond_to do |format| # BLOCK == COLLECTEUR
# collecteur => different format accepté
# instance de  ActionController::MimeResponds::Collector
    format.html
    format.json do
        render json: @posts
        # REND DU JSON
        # REND LES DIFF ARTICLES
    end
end

# url
http://localhost:3000/posts.xml
http://localhost:3000/posts.json

#---
#           CE QU IL SE PASSE :

# RUBY APPEL SUR CHAQUE ARTICLE METHODE to_json
# ON PEUT MODIFIER LE COMPORTEMENT

{render json: @posts.as_json(only:[:name,:created_at,:id])}

#---
# ON PEUT AUSSI LE FAIRE DE MANIERE GLOBALE
# DIRECTEMENT AU NIVEAU DU MODEL

class Post < ApplicationRecord
    # on peut redefinir la methode as_json pour ce model
    # recree methode as_json
    def as_json(options=nil)
        # super appel la methode parente avec nos params
        super(only: [:name,:id,:created_at])
    end
end


#------------------------------------
#       CHAQUE ARTICLE FORMAT

respond_to do |format|
    format.html
    format.json {render json: @post}    # au singulier
    format.xml {render xml: @post}      # au singulier
end


#------------------------------------
#           PLUS LOIN


# GEM => JBUILDER   (INCLU PAR DEFAUT)
# A VOIR
# RENDRE DU JSON DE MANIERE PLUS COMPLEXE
# RENVOI UNE VUE SPECIFIC

#---

# COMMENT CA FONCTIONNE ?
# COMMENT RAJOUTER NOS PROPRE TYPE ?

format objet de type Collector
ActionController::MimeResponds::Collector < Object

# 2 accesseur
request     # ce qui rentre
respond     # ce qui sort

# ds le controller index
puts "====="
puts request.format
# ns renvoi le format utilisé ? sur le serveur

# sur git si on cherche mime_type ds rails
# fichier qui explique les diff format
# on peut en rajouter ds le dossier config
# initializer/mime_types ex :
Mime::Type.register "text/richtext", :rtf
# redemarer le serveur
# config rendu du foormat rtf
format.rtf {render plain:"blablabla"}


#---
# RAJOUTER DES VARIANTES
# ds le controller rajouter variante
# lorsque l on fait un format
# on lui passe un block avec le template
# mobile tablette  etc ...



