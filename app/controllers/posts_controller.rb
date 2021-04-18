class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  #  @post = Post.create()
  end

  def create 
    @post = Post.create(title:params[:post][:title],description:params[:post][:description])
    @post.save 
    redirect_to '/posts'
  end
end
