class PostsController < ApplicationController
  
  def index
  	@posts = Post.all
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
	  @post = Post.new
  end

  def create
    @user = User.find(session[:user_id])
    @p = Post.create(
      body: params[:post][:body],
      user_id: session[:user_id]
      )
    flash[:alert] = "You have posted."
    redirect_to posts_path
  end

  def edit
	  @post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(body: params[:post][:body])
  	redirect_to post_path
  end 

end
