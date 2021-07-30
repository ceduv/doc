#====================================
#           RUBY & RAILS

#------------------------------------
#             FILTRES

# LES FILTRES PERMETTENT D EFECTUER DES
# OPERATIONS AVANT OU APRES CHAQUE ACTION;

before_action param         # AVANT
after_action  param         # APRES
around_action param         # AVANT + APRES
skip_before_action param    # SAUTER UNE ACTION

param       # BLOCK || METHODE

ex: before_action do |controller|
    before_action :set_post


#------------------------------------
#               BLOCK

before_action do |controller|
    puts "je suis avant l'action"
end


#------------------------------------
#              METHODE


around_action :around
def around
    puts "avant"
    yield           # CONTENT
    puts "apres"
end


#------------------------------------
#          CAS D UTILISATION

class PostsController < ApplicationController

    before_action :set_post, only: [:update, :edit, :show, :destroy]
    # on a remplacer toutes les repetions par une methode

    def index
      @posts = Post.all
    end

    def show
      # @post = Post.find(params[:id])      # before_action
    end

    def edit
      # @post = Post.find(params[:id])      # before_action
      puts @post.inspect
    end

    def update
      # @post = Post.find(params[:id])      # before_action
      @post.update(post_params)
      redirect_to posts_path
    end

    def destroy
      # @post = Post.find(params[:id])      # before_action
      @post.destroy
      redirect_to posts_path
    end

    def new
      @post = Post.new
    end

    def create
      post = Post.create(post_params)
      redirect_to post_path(post.id)
    end

    private

    def post_params
      params.require(:post).permit(:name,:content)
    end

    def set_post
      @post = Post.find(params[:id])
    end
  end