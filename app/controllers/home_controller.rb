class HomeController < ApplicationController
  #before_action :authenticate_user! only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :post, :signup, :login]
  
    def index
    end
  
    def login
    end
  
    def post
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:post_id])
    end
    
    def new
    end
    
    def create
        @post = Post.new
        @post.theme = params[:theme]
        @post.guide = params[:guide]
        @post.language = params[:language]
        @post.region = params[:region]
        @post.content = params[:content]
        @post.save
        
        redirect_to "/home/show/#{@post.id}"
    end
    
    def edit
        @post = Post.find(params[:post_id])
    end
    
    def update
        @post = Post.find(params[:post_id])
        @post.theme = params[:theme]
        @post.guide = params[:guide]
        @post.language = params[:language]
        @post.region = params[:region]
        @post.content = params[:content]
        @post.save
        redirect_to "/home/show/#{@post.id}"
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        redirect_to '/home/post'
    end
    
end
