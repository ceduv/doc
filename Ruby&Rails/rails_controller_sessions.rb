#====================================
#           RUBY & RAILS

#------------------------------------
#             SESSION

inspecter
# application/storage/cookies
chiffrer
# key ds secret.yml


cookies                     # cle particuliere
cache
active record store         # db
mem_cache strore
# on peut en installer  dautres

# post_contoller
session[:user_id] = 4
# cat_controller
@session = session[:user_id]
# vue category
session : <%= @session.inspect % > ###___
# session :4 en vue

# hash
session[:user_id] = {username:"cedric",age:"33"}

# delete
session.delete(:user_id)


#------------------------------------
#              FLASH

# stocké des infos pour la prochaine requete

flash[:notice] = "Article modifié avec succès"

<% if flash[:notice] % >
    <div class="alert alert-success"><%= flash[:notice] %></div>
<% end % >
###___

#-------------
# plusieurs messages

flash[:success] = "Article modifié avec succès ."
flash[:error] = "Article non modifié ."

<% flash.each do |name,msg| % >
    <div class="alert alert-<%= name %>"><%= msg % ></div>
<% end % >  ###___

#-------------
# on peut flash ds le redirect_to
redirect_to ...,flash: {success:"le message"}
# encore plus cour avec notice ou error
redirect_to ...,notice:"le message"
# add de nouveau flash ds apllication controller
add_flash_types :success, :danger
# afficher seulement pour la requete actuel
flash.now[:success] = "Article modifié avec succès ."
