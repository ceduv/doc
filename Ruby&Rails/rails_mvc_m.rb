#====================================
#           RUBY & RAILS

#------------------------------------
#               MVC

#------------------------------------
#              MODELS

# Un modèle est une classe Ruby utilisée
# pour représenter des données. les modèles
# peuvent interagir avec la base de données
# de l'application via une fonctionnalité
# de Rails appelée Active Record


LA CLASS CORRESPONDANT AU MODELS SE SITUE :
app/models

# deja present
ApplicationRecord < ActiveRecord::Base
# nos models vont heriter de cette classe

convention :
post.rb             # nom de la table au sing

routes.rb
get '/articles', to:'posts#index', as:"posts"
# cree vu et controlers
rails g controller Posts index


#------------------------------------
#           RAILS EN CLI

rails c
# acces a differentes classe

#        INTERAGIR AVEC LA DB

ex : Post

Post.find(1)    # recupere du contenu de la db
p=Post.find(1)  # associe cette article a P ?
p.name          # nom de l article
p[:name]        # idem


#---------------------
# modifier le contenu

p.content = "salut comment ca va"
p.save
p.destroy       # suppr ds la db


#------------------------------
# cree un nouvel enregistrement

# methode 1
# cree l instance puis save

p=Post.new          # create ?
p.name = "salut"    # du contenu
p.save              # enregistre en db
p.id                # verifier nouveau contenu

# methode 2
# cree l instance + perssiste l info

p = Post.create(name:'Article 4', content:"non plus de LOREM")


#-------------------
# update le contenu

p.update(name:"blabla",content:"reblablabla")

# update sous conditions
# apres avoir Post = Post.all
Post.where(name:"salut").update_all(name:"bienvenue")


#---------------------
# recupere contenu db

Post.find(2)
Post.fisrt
Post.last
Post.count          # renvoi nombre d entré
Post.all            # renvoi tout le contenu
                    # forme objet activerecords::relation
posts = Post.all    # sauvegarder l objet
post[0]             # call les id
post[1]
post[2]
Post.order(:name)   # organise par nom
Post.order(:name).limit(1)  # par nom + 1er enregistrement
Post.where(name='salut')    # condition
# update sous conditions
Post.where(name:"salut").update_all(name:"bienvenue")

# destroy sous conditions
Post.where(name:"salut").destroy_all
# directemet en requete sql
Post.where(name:"salut").delete_all