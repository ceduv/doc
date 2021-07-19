#====================================
#           RUBY & RAILS

#------------------------------------
#            MIGRATIONS


COMMENT DOIT SE COMPORTER NOTRE DATABASE

# LE CODE DOIT ETRE PORTE SIMPLEMENT

PERMET D ETRE RAPIDEMENT A JOUR AVEC LA DB
# migrate

PERMET DE DEFINIR LE MUTATIONS / MODIFICATIONS

# QUELQUN QUI RECUPERE LE PROJET A JUSTE
# A LANCER LES MIGRATIONS POUR QUE LE PROJET
# SE METTE A JOUR

PLACER DANS LE DOSSIER DB

# ON PEUT LES GENERER LES MIGRATIONS
# PAR LA CMD :
# par convention deja id autoincrement
rails generate migration CreatePostsTable title:string content:text
rails g migration CreatePostsTable title:string content:text

dans db/migations/
# fichier cree avec un time stamp
# faire les migrations ds l ordre

# en cli
rails db:migrate    # migration
rails cd:rollback   # inverse la derniere migration

class CreatePostsTable < ActiveRecord::Migration[6.1]
    def change
        create_table :posts do |t|
            t.string :title
            t.text :content,limit: 4294967295   # longtext

            t.timestamps
        end
    end
end


#           NOUVELLE MIGRATION


# renomer la column title en name

rails g migration RenamePostTitleToName

class RenamePostTitleToName < ActiveRecord::Migration[6.1]
    def change
      change_table :posts do |t|
        t.rename :title, :name
        t.timestamps        # created_at updated_at
    end
end

# si quelqun a inserer des infos ds la db
# la migration permet de modifier les infos
# sans perdre les donnees


