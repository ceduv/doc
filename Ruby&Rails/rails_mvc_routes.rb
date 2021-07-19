#====================================
#           RUBY & RAILS

#------------------------------------
#              ROUTES


# lorsqu on tape une url localhost:3000/salut

routes.rb               # lecture fichier

config/routes.rb        # url -> reponse

ex :
get '/salut/(:name)', to:'pages#salut', as:'salut'
get '/salut/(:name)'    # lorsquon appelle cette url
to:'pages#salut'        # on effectue cette action
as:'salut'              # nom pour call + facile

# les routes pointes vers les controllers


#------------------------------------

#              ROUTES.RB

ROOT to:'pages#home'


GET

get '/salut', to:'pages#salut'
#   l url    +    use action dans un controller

# lorsque salut est call aller dans controller page
# et call l action salut


# avec parametre derriere /salut
get '/salut/:name', to:'pages#salut'


# avec parametre optionel
get '/salut/(:name)', to:'pages#salut', as:'salut'


