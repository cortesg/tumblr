class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  end

  def new
	  @post = Post.new
  end

  def create
    # @post = Post.create
    
		Post.create(
      body: params[:post][:body],
      user_id: session[:user_id]
      )
		flash[:alert] = "You have posted."
		redirect_to :back
		# end
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
