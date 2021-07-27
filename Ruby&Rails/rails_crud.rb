#====================================
#           RUBY & RAILS

#------------------------------------
#               CRUD

#     CREATE READ UPDATE DESTROY

# avoir une gestion des contenus

# creer un crud
# donner une ressources
ressources :photos

#----------------------------------------------
# pour la gerer on a differentes url

HTTP Verb	  Path	        Controller#Action

GET	        /photos	            photos#index
# display a list of all photos

GET	        /photos/new	        photos#new
# return an HTML form for creating a new photo

POST	    /photos	            photos#create
# create a new photo

GET	        /photos/:id	        photos#show
# display a specific photo

GET	        /photos/:id/edit	photos#edit
# return an HTML form for editing a photo

PATCH/PUT	/photos/:id	        photos#update
# update a specific photo

DELETE	    /photos/:id	        photos#destroy
# delete a specific photo

#----------------------------------------------

# dans les routes je remplace :
get '/articles', to:'posts#index', as:"posts"
# par
resources :posts
# creer un systeme de ressource pour posts
rails routes
# en cli pour voir les differentes routes
# on voi que rails a cree differentes routes
# pour post cf tableau dessus

#----------------------------------------------

#                   SHOW

# permet de cree un lien vers chaque article

# ds html
<a href="<%= post_path(post.id) %>" class="btn btn-primary">lire la suite</a>
# en fonction de l'id ici

# creer methode pour afficher les articles
def show
    @post = Post.find(params[:id])
end

# creer la vue qui correspond
show.html.erb
# affiche le titre
<h1><%= @post.name %></h1>
# le content
<p><%= @post.content %></p>
# lien pour revenir au sommaire
<a href="<%= posts_path %>" class="btn btn-primary">som</a>


#----------------------------------------------

#                  EDIT

# un lien qui permet d editer les articles

# dans applications_controller.rb on peut
# voir une authentification par token
# moi pas ...
# protect_from_forgery with :execption
# je vois bien le token ds le html quand mm

# ds controllers
def edit
    @post = Post.find(params[:id])
end

FormHelperRails     # guide rails pour les form
# la vue
<%= form_with model: @post do |f| %>
    <%= f.text_field :name %>
    <%= f.text_area :content, size: "50x10" %>
    <%= f.submit %>
    <% end % > ###___

    # definir method update ds controllers

    puts params.inspect     # pour voir les params sur le serveur

    # ***
    def update
        @post = Post.find(params[:id])
        @post.update(params[:post]) # *** ERR FAILLE SQL
    end
    # on doit verifier les parametres
    # les parametres sont une classe particuliere
    require     # verifie une info et la retourne
    permit      # les champs que l on autorise
    puts params.require(:post).permit(:name,:content).inspect

    def update
        @post = Post.find(params[:id])
        # on verifie l info , on autorise les champs name & content
        post_params = params.require(:post).permit(:name,:content)
        # une x les params autorisé , je peu les envoyers au model
        @post.update(post_params)
        # puis on redirige
        redirect_to posts_path
    end

    # on cree un bouton qui redirige vers edit
    <a href="<%= edit_post_path(post.id) %>" class="btn btn-primary">Editer</a>


    #----------------------------------------------

    #                    NEW

    # le btn
    <a href="<%= new_post_path %>"
    # la vue
    new.html.erb        # pour le conternu idem que edit
    # le controller
    def new
        @post = Post.new                  # on cree une entite vide
    end
    # on doit maintenant definir create

    #----------------------------------------------

    #                  CREATE

    def create
        # je veu cree un nouvelle article
        post = Post.create(post_params)
        # en parametre , les parametre nettoyer require + permit
        redirect_to post_path(post.id)
    end

    # pour eviter de se repeter on peut creer une methode prive
    private
    def post_params
        params.require(:post).permit(:name,:content)
    end

    #----------------------------------------------

    #                 DELETE

    # on cree un lien
    # en passant la methode delete
    <a href="<%= post_path(post.id) %>" class="btn btn-danger" data-confirm="Sur ?" data-method="DELETE">Supprimer</a>
    # data-confirm    - pour une box qui souvre
    # data-method     - posté avec methode particuliere

    # controller
    def destroy
        @post = Post.find(params[:id])    # recup l article par param passé
        @post.destroy                     # on le detruit
        redirect_to posts_path            # on redirige
    end

    #----------------------------------------------

    #                 RECAP

    CRUD Categories

    # 1 migration db/migrate
    rails g migration CreateCategories name:string slug:string

    # 2 migration db
    rails db:migrate

    # 3 creation model  --skip pour sauter la migration
    rails g model category  --skip

    # 4 creation du controller
    rails g controller Categories index show create new update destroy edit

    # 5 creation lien nav bar
    <li class="nav-item"><a href="<%= categories_path %>" class="nav-link">Catégories</a></li>

    # 6 creation route
    ressources :categories

    # 7 les controllers
    def index
        @categories = Category.all  # recuperer les cat
    end

    def new
        @category = Category.new    # cree nouvelle cat
    end                             # envoyer a la vue

    def show
        @category = Category.find(params[:id])  # recup cat en particulier
    end

    def create
        @category = Category.creates(category_params) # on cree une cat avec params
        redirect_to categories_path(@category.id)
    end

    def edit
        @category = Category.find(params[:id])  # on cree une nouvelle cat
    end

    def update
        @category = Category.find(params[:id])  # on recup la cat
        @category.update(category_params)       # on maj avec parametres + methode private
        redirect_to categories_path(@category.id)

    end

    def destroy
        @category = Category.find(params[:id])  # recup cat
        @category.destroy                       # suppr
        redirect_to categories_path             # redirect
    end

    private

    def category_params
        params.require(:category).permit(:name,:slug)
        # prend les param , demande d obtenir :category
        # autorise a la foi name et slug
    end

    # 8 creer les pages
    rails routes

#-----------------------------------------------------
#                   SCAFFOLD

rails g scaffold User username:string bio:text
# cree bcp plus des choses
# migration test controller vues
rails db:migrate

# on a deja les pages de creee avec champs etc ..
# on pourra cree un template pour le scaffold



