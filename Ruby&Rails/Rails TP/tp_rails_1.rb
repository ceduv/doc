#-----------------------------------------------
#                 RAILS TP

#-----------------------------------------------
#         PROJET / DB / CONFIG

# CLI
rails new petsy --database=mysql

# CREER DB
create database petsy;

# ds config/database.yml
default
    password:
development
    database: petsy

# REFRESH SANS RESET SERVEUR
# ds config/environment/developement.rb
#config.file_watcher = ActiveSupport::EventedFileUpdateChecker
config.file_watcher = ActiveSupport::FileUpdateChecker

# ds application.rb
# on peut changer la config pr les generateurs
# ex ne pas generer asset ou helper
# garder projet le plus propre possible
module Petsy
    class Application < Rails::Application
        config.generators do |g|
        # block en param
            g.assets false
            g.helper false
            g.test_framework false
            # n'utilise pas de test
            g.builde false
            # ne genere pas les vues en json
        end
    end
end

#-----------------------------------------------
#         GENERER MODEL ET MIGRATION

# CREE UN MODEL DE GESTION DES UTILISATEURS
rails g model User username:string email:string confirmed:boolean confirmation_token:string password_digest:string firstname:string lastname:string avatar:boolean
# apres User params des champs dont on a besoin
- confirmed:boolean   # savoir si user confirmé
- confirmation_token:string # a envoyer pour confirmer le compte
- password_digest:string    #
- avatar:boolean    # savoir si avatar envoyé
# il genere la migration et le model ( pas les test cf:config)

# ds migrations/createsusers.rb
t.boolean :confirmed, default: false
t.boolean :avatar, default: false

# migration
rails db:migrate

#-----------------------------------------------
#          CONTROLLERS / VIEWS

# sans cli car pas un crud classique

1 # inscription des utilisateurs
# Action new qui permet d afficher le formulaire
# Action create qui traitera les donnees

# ds controllers users_controllers.rb
class UsersController < ApplicationController
    def new
        @user = User.new
        # je cree un user
        # qui sera un new.user
    end
    def create

    end
end

# cree view pour new
# ds views users/new.html.erb
<div class="panel panel-default">
    <div class="panel-heading">S inscrire</div>
    <div class="panel-body">
        <%= form_for @user, class: 'form-horizontal' do |f| % >
        # form_for param l utilisateur qui est un
        # nouvel enregistrement pas encore persisté
        <%= f.text_field :name % >
         <% end % >
    </div>
</div>

# cree la route
# ds config/routes.rb
resources :users, only: [:new, :create]
# systeme de ressources pour users
# je n ai créé que new et create
# on utilise en parti le crud ?

# si je me rend sur lo:3000/news/users = views


