#====================================
#           RUBY & RAILS

#------------------------------------
#       VIEWS PARTIALS LAYOUT

LA PARTIE VUE EST GERER PAR ACTIONVIEW
- UTLISER DES MODULES

#------------------------------------
#            PARTIALS

PERMET DE GENERER UN CODE HTML ET DE
LE SEPARER DANS UN FICHIER PARTICULIER
# DANS LA VUE
<%= render partial: 'form' % >
# si
<%= render partial: 'shared/form' % >
# irait chercher shared a la racine de views
# utile reutilisable a travers diff module

# CONVENTION
_form.html.erb
# creation du fichier au meme niveau
# que le fichier initial
ON Y COPIE NOTRE CODE # ex:edit.erb

# FONCTIONNE CAR LA VARIABLE POST EST PASSE AUTO
# ON PEUT PASSER DIFFERENTES VAR
<%= render partial: 'form', locals: {item: @post} % >
#===
<%= render 'form',{item: @post} % >
# pratique si que des locals a utiliser
#===
<%= render partial: 'form', object: @post, as: 'item' % >


# on passe un hash qui dit :
# en local nouvelle var qui s apelle item et
# qui contient notre article
<%= render partial: 'form', locals: {item: @comment} % >
# on crée quelquechose de reutilisable


# DANS FICHIER _form
# on remplace les @post par item

# DANS INDEX
<%= render 'post',post: post % >
#===
<%= render post % >
# si on lui passe l entite il sait que c est un model
# de type post et rend le fichier_post.html.erb

# ON PEUT AUSSI DONNER UNE COLLECTION A UTILISER
# ET SUPPRIMER NOTRE BOUCLE
<% @posts.each do |post| % >
    <%= render post % >
<% end % >
#===
<%= render partial: 'post', collection: @posts % >
# UTILISE LA VARIABLE
# LA DECOMPOSE
# L INJECTE DS LA VUE
#===
<%= render @posts % >
# *** UTILISABLE POUR SIDEBAR
# utilise la methode
to_partial_path
# peut servir a definir un autre chemin ???
# au niveau du model ?
# pour cette entité c est ce fichier que je doit utiliser


#------------------------------------
#         TEMPLATE / HELPERS

# POUR FAIRE REMONTER DES INFORMATIONS
# ON PEUT UTILISER LE CAPTURE HELPER
ACTIONVIEW::HELPERS::CAPTUREHELPER

DOC content_for
 helper pour :  checbox
                tag
                date
                etc...

# helper = serie de modules pour injecter
# des methodes au niveau de notre vue
# certains helpers créé automatiquement
# ds app/helpers lorsquon a generer des controller

ex:
# posts/swow.html.erb
<% content_for (:title, @post.name) % >
# si je souhaite recuperer l information
# yield + clé (=nom du block)
# nous ici title
# layout/application.html.erb
<title><%= yield (:title) % ></title>

# possible de passer un block plutot qu une valeur
# en 2nd parametre
ex:
# ds posts/swow.html.erb
<% content_for :sidebar do % >
    lorem ...
<% end % >
# ds layout/application.html.erb
# sous le <%= yield %> # appel tout ce quin est pas
# dans un block particulier
<%= yield :sidebar % >


content_for? pour cree des conditions en vue

# CREER UN SOUS TEMPLATE
# ds layouts on cree sidebar.html.erb
<div class="row">
    <%  if content_for?(:sidebar) % >
        <div class="col-sm-8">
            <%= yield(:content) % >
        </div>
        <div class="col-sm-4">
            <%= yield(:sidebar) % >
        </div>
    <% else % >
        <div class="col-sm-12">
            <%= yield(:content) % >
        </div>
    <% end % >
</div>

# MODIFIER LE TITRE
# ds application.html.erb
<title><%= content_for?(:title) ? yield (:title) : 'Formation' % ></title>