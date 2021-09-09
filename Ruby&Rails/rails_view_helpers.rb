#====================================
#           RUBY & RAILS

#------------------------------------
#           VIEW HELPERS

PERMET D AJOUTER TOUTE UNE SERIE DE METHODE
QUI SIMPLIFIE L UTILISATION EN VIEW

# API
ActionView

#------------------------------------
#           URL FOR

GENERER UN LIEN
# ds posts/edit.html.erb
<%= url_for(controller: 'posts', action :'index') % >
# param = comment fonctionne notre url
# auto : fait le rapprochement des routes entre
# controller et action
++ host:'local.dev', port: 8080
# changer nom d'hote + port
++ only_path: true
# genere simplement l url avec le chemin
# sans nom de domaine etc
false # utilise tout
###!!!
# peut etre utile en mailing d avoir
# le nom d hote + le port ds l'url

# si
<%= url_for() % >
# utlise l'url en cour
<%= url_for(q='marecherche') % >
# on genere une requete qui s apl q -> ma recherche
urlencours?q=marecherche
###!!! util en pagination

AUSSI CAPABLE DE RECUPERER UN MODEL
<%= url_for(@post) % >
# trouve auto l action qui correspond
<%= url_for([:edit @post]) % >
# si on passe un tableau on peut aussi passer l action
#===
<%= url_for([edit_post_path(@post)]) % >
# en faite il cree une string avec edit et post

#------------------------------------
#           LINK TO

GENERER UN LIEN

# ds le partial posts/_post.html.erb
# ou directement ds views

# LINK READ
< a href="<%= post_path(post.id) % >" class="btn btn-primary" >Lire la suite</a>
#===
<%= link_to('Lire la suite', @post, class="btn btn-primary") % >
###*** SI PARTIAL DE CREE @post = post car plus de variable d instance

# LINK EDIT
# avec l'action ([] plus objet)
<%= link_to('Edit', [edit: post], class="btn btn-default") % >
###*** PARTIAL

# LINK DELETE
# lien vers model @post + une confirmation (data) + la methode (delete)
<%= link_to('Supprimer', @post, class="btn btn-danger"), data: {confirm: "sur ?", method: :delete} % >


#------------------------------------
#        HELPERS ASSOCIATION

# ds partial _form.hmtl.erb
<%= f.select :category_id, Category.pluck(:name, :id) % >
# ds post_controller.rb
# on vien accepter le param category_id
def post_params
  params.require(:post).permit(:name,:content,:slug,:category_id)
end

#------------------------------------
#         HELPERS CREATE

# DOSSIER APP/HELPERS
# creer un fichier NomDuHelper_helper.rb

###*** le fichier application_helper
# permet d ecraser des methodes qui
# serait defini ailleurs

EX:
creer gravatar_helper.rb
# <<
###*** ne pas utiliser de snoms trop generic
# car appelé ds toutes les views
module GravatarHelper
  def gravatar(email, options = {s:200})
  #
    throw TypeError unless email.respond_to?(:to_s)
    # je renvoi type erreur A MOINS QUE remonde a ca ..
    "https://gravatar.com/avatar#{Digest::MD5.hexdigest(email.to_s)}?s=#{options[:s]}"
    # on rajoute md5 de l email                             #???
    # Digest::MD5.hexdigest() en param l email qu on convertit en string
    # pour que la chaine sois interpollé on met des ""      #???
    # options = {s:200}   -> param pour choisir la taille   #???
    # par defaut la taille est a 200                        #???
    # s=#{options[:s]     -> recupere la taille             #???
  end
end
# ds views/posts/edit
# acces a gravatar global
<%= gravatar('contact@grafikart.fr'); % >
# on rajoute image_tag pour generer une image
image_tag "https://gravatar.com/avatar#{Digest::MD5.hexdigest(email.to_s)}?s=#{options[:s]}"
