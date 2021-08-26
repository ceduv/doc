#====================================
#           RUBY & RAILS

#------------------------------------
#         MODEL ASSOCIATIONS

# associé une table d article et une table de catégorie
# faire la liaison


1 # STRUCTURER LA DB
# cli
rails g migration add_category_to_posts category:references
# references => liaison ruby


#------------------------------------

2 # DB/MIGRATE
class addCategoryToPosts < ActiveRecord::Migration[5.0]
    def change
        add_reference :posts, :category, foreign_key: true
    end
end
# je rajoute une ref sur article qui fait refence a category
# clé etrangere pour verification / creation d un champ category


#------------------------------------

3 # MODIFIER LA DB
# cli
rails db:migrate
# si on regarde la structure db
# nouveau champs category_id pour associer a la 2nd db
# ex si category_id post = 2 associé a la category 2 de la 2nd db


#------------------------------------

4 # MODELS/POST.RB
# l article appartient a une category
belongs_to :category
# le fait d'utiliser belongs_to ajoute au model une serie de methode
# Guides index => association
# cli - rails c
p = Post.first          # associe premier article a p
c = Category.first      # associe premiere category a c
p.category              # nil
                        # pas encore d'asso set
p.category = c          # associe
p.save                  # MAJ db
p.category              # retourne instance du model category
p.category.name         # nom de lacatedory associé
p.create_category(name:'Demo',slug:'demo')
                        # cree nouvelle category + y associe l article
p.save                  # persiste les informations

build_association       # construire associations
create_association!     # renvoi exceptions si pb


#------------------------------------

5 # VIEWS
# voir la category associé a l'article
Catégorie : <%= post.category.name % >

# PB 1
# IL FAUT GERER LE CAS NULL/NILL
# si relation pas forcement definie
EX : <% if post.category % >
        <%= post.category.name % >

# PB 2
# PROBLEME N+1 = TROP DE REQUETE
EX : pour afficher 10 articles fait 11 requetes
# si on sait qu on va avoir besoin de ces infos
# on peut forcer la recuperation au niveau du controller
def index
    @posts = Post.includes(:category).all
end
# inclure la relation category
EX : pour afficher 10 articles fait 2 requetes


#------------------------------------

6 # CONTROLLER/CATEGORY.RB
# plusieurs articles associés a une seule category
has_many :posts
# plusieurs options dispo
# Api de rails : has_many Options
# cli - rails c
# relancer rails c
c = Category.last
# derniere category ds c
c.posts
# tableau qui contient les differents enregistrements
c.posts.first           # voir le premier
c.posts.where(online)   # ajouter une condition
c.posts.online          # requete + scope qui check le champs online
p = post.find(4)        # selectionner l article 4 ds p
c.posts << p            # ajouter l article a la category

# options

dependant       # dependant d autre chose
                # ex : suppr category -> suppr les articles associés
                # on peut presicer les methodes a utiliser
                # destroy / delete_all / ...

counter_cache   # rajouter un counter a la relation


#--------------------------------------

7 # MODELS/POST.RB
belongs_to :category, counter_cache: true
# on modifie la relation qui a le belongs_to
# un article appartient a une category
counter_cache: true
# on peut passer le champs qu on veut count
# defaut : noms de la table associé suivit de _count
# ce champs sur category car c est category
# qui garde une trace du nomber de d article

# rajouter le champs en db
# cli
rails g migration add_posts_count_to_category posts_count:integer
# db/migrate/count_to_category.rb
add_column :categories, :posts_count, :integer, default: 0
# cli
rails db:migrate
# mettra a jour se champs automatiquement a chaque association
# cli rails c
p = Post.first
c = Category.first
c.posts << p        # on voi le systeme d incrementation sur post_count

#***
reset_counters      # permet de reset le count si pb en db
Category.reset_counters(1, :posts)
# preciser id de la category -> 1
# sur l assosciation :posts


#----------------------------------------

8.a # HAS_MANY :THROUGH
# permet d avoir une table intermediaire qui sert de laison
# model pour representer la table (permet d avoir des donne specifique ?)
ex : table docteurs / patients + table rdv
        pour interagir entre plusieurs docteurs et patients

8.b # HAS_AND_BELONGS_TO_MANY
# relation avec une table intermediaire
# pas de model pour representer la table intermediaire

# creer table + model
# cli
rails g model Tag name:string
# cree un ficher migration en db et un controller vide

# cree table de liaison
rails g migration create_join_table_posts_tags post tag
# create_join_table_posts_tags -> posts tags au pluriel par ordre alphabetique
# liaison entre un article : post et un tag : tag
# si on regarde la migration rails cré un code
# qui permet de definir des index si voulu
# si on decommente le code on fonctionnne par index
# ce qui augmente les performances mais prend + de place

# Maj db
rails db:migrate

# faire la liaison
 un article appartient a plusieurs tags et invers
# model/post
has_and_belongs_to_many :tags
# model/tag
has_and_belongs_to_many :posts

# ACCES A DE NOUVELLE METHODE
# cli rails c
t = Tag.create(name: 'ruby')        # cree un tag
t2 = Tag.create(name: 'rails')      # 2nd tag
p = Post.first                      # prend le premier article

p.tags = [t,t2]
# article.collection = [ on passe un tableau contenant les tag]

p.tags                              # affiche les tag de p
Post.fist.tags.where(id:3)          # le tag d id 3
p.tags.delete(t2)                   # suprr la relation
                                    # simple delete from
p.tags.destroy(t)                   # suppr relation + appel callback
                                    # recupere liste id puis callback
p.tags.clear                        # suppr toutes les realtions

# Views
<% if !post.tags.empty? % >
        <%= post.tags.map(&:name).join(', ') % >
    <% end % >
<% end % >
# par defaut si pas de tag tableau vide ( pas de nil )

# cli rails c
Category.includes(posts: :tags).all
# partir de la category en recuperant les artciles et les tags associés
# includes = quelle profondeur ?
# on peut le stocker ds une variable
c = Category.includes(posts: :tags).all
c.first.posts.first.tag
# donne premier article + premier tag sans requete supplementaire


#----------------------------------------

9 # POLYMORPHIC ASSOCIATION
# relation qui peut affecter plusieurs table a la x
# creer meta
rails g migration create_meta
# pris le code ds la documentaion et copier ds db/migrate
create_table :meta do |t|
    t.string    :name
    t.references :metaable, polymorphic: true, index: true
end

# cli
rails db:migrate

# cree models/meta.rb
class Meta < ApplicationRecord
    # ici on va definir la relation
    belongs_to :metaable, polymorphic: true
    # nom de la relation poly
    # suivant les champs utiliser rails saura si il doit faire
    # la relation entre les articles ou les category
end

# ds models.post.rb
has_many :metas, as: :metaable
# un article a plusieur metas grace a la relations metaable
# idem ds le models category

# cli rails c
# cree une nouvelle meta et l associé a un article en particulier
p = Post.first
p.metas             # erreur si meta avec un "s"
# 2 solutions
# 1 ("hors convention")
# changer nom de la table
# ds models/meta.rb
self.table_name = "metas"
# on force la main car on a pas respecter les conventions
# 2 ("convention")
# cree une migration
rails g migration rename_metas
# db/migrate
def change
    rename_table :metas, :meta
end
#migration
rails db:migrate

p.metas                 # plus d'erreur
# creer une meta
# documentation build ou create
p.metas.create(name: 'seo_title')
# insert ds la table meta + relation polymorphic
Category.first.metas.create(name: 'seo_content')
Meta.first.metaable
# pas post mais le nom de l association donc metaable
# premiere requete recupere type et id
# puis seconde requete pour recupere les informations
Meta.includes(:metaable).all
# 2 requete car 2 types de contenu rattacher
m = Meta.includes(:metaable).all
# on sauvegarde ds une variable
m.first.metaable.name
# renvoi le nom sans faire de requete car deja contenu ds m


