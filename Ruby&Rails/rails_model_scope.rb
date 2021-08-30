#====================================
#           RUBY & RAILS

#------------------------------------
#            LES SCOPES

# methode qui simplifie les requetes
# recurrentes au niveau du model et
# alleger le code du model

example :
mettre en place systeme de online/offline
pour differents articles


#--- 1
nouveaux champs db pour online/offline
# en cli
rails g migration add_online_to_posts online:boolean


#--- 2
# regarder migration
# db/migrate/date_add_online_to_posts
class AddOnlineToPosts < ActiveRecord::Migation[5.0]
    def change
        add_column :posts, :online, :boolean, default: false
    end
end
# on ajoute default: false
# pas de champs boolean en mysql
# donc cree un champs de taille integer 1 ou 0

#--- 3
lancer migration
#cli
rails db:migrate

#--- 4
mettre un article en ligne
# en cli -> rails c
Post.first.update(online: 1)
# change le champ online du premier article

#--- 5 (premiere maniere) SANS SCOPE
par defaut tout nos articles sont offline

# dans models/post.rb
def self.published
    # self -> methode de classe car appelé sur post
    where(online :1)
    # seulement les articles online
    # automatiquement sort instance de activerecordrelation
    # qui nous permet d utiliser .all  #???
end
# delegue une partie au niveau du model
# evite la repetion ds le controller

# dans post_controller
# lorsque je recupere mes articles , j add ma condition
@posts = Post.published.all

#---5 (deuxieme methode) SCOPE

# dans models/post.rb
scope :published, -> { where(online :1).order }
#       symbol + lambda{condition a effectuer}
# on peut ajouter tout ce qui est dispo ds activerecord relation
# .order  ORDER_BY en SQL   ( trier par )

# dans post_controller
@posts = Post.published.all

# on peut ajouter d autres scope
scope :offline, -> { where(online :0) }
# tout les articles hors lignes
scope :alpha, -> { order(name: :asc)}
# tout les articles organiser pas nom croissant

# on peut utiliser les scope les uns sur les autres
@posts = Post.offline.alpha.all
# tt les articles offline et alpha numeric


# !!!
rails fusione systematiquement les conditions
# le scope ne s ecrase pas auto si where ou order
# si on demande online && offline
# il ne peut pas remplir la condition

pour effacer les methodes passez au scope on utilise
rewhere # enleve les where utilisé avant
reorder # enleve les order utilisé avant

possibilité de passer des arguments au scope
@posts= Post.online(0).all
scope :online , -> (online) { false }
#???
conditions plus complexe
scope :online, -> (online) do
    where(online: online) if online.is_a? Integer
end
# scope plus pratique pour condition complexe
# que les methodes de classe (.self)

#---    SCOPE GLOBAUX
default_scope { order(created_at: :desc)}
# par defaut trier par date de creation decroissante
# attention si condition differente va fusionner les deux
reorder
rewhere

#--- UNSCOPED
Post.online.unscoped.order(name: :desc).all
# retire tout les scopes prealablement defini
# ne prend en compte que ce qui est derriere le unscoped

unscope(:order)
# enleve un scope en particulier
unscope(where: :name)




