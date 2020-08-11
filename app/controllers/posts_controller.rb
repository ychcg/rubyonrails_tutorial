class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:title], content: params[:content])
    redirect_to "/posts/index"
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    redirect_to "/posts/show/#{@post.id}"
  end

  def delete
    Post.destroy(params[:id])
    redirect_to "/posts/index"
  end
end
