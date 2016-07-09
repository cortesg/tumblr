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
    # @post = Post.create
    # if User.find(session[:user_id]).first == nil  #this line isn't working.
    #   flash[:alert] = "Please sign in."
    # else
    @user = User.find(session[:user_id])
    @p = Post.create(
      body: params[:post][:body],
      user_id: session[:user_id]
      )
    flash[:alert] = "You have posted."
    redirect_to "/posts"
  end

  def edit
	  @post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(body: params[:post][:body])
  	redirect_to :back
  end 

end
