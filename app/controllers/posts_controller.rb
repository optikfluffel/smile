class PostsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.new(params[:post])

    if @post.save
      flash[:notice] = 'Post was successfully created.'
      redirect_to current_user
    else
      flash[:error] = 'Unable to create post.'
      render action: 'new'
    end

  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.'
      redirect_to @post
    else
      flash[:error] = 'Unable to update post.'
      render action: 'edit'
    end

  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      flash[:notice] = 'Post was successfully deleted.'
      redirect_to posts_url
    else
      flash[:error] = 'Unable to delete this post'
      redirect_to posts_url
    end

  end
end
