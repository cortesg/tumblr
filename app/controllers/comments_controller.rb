class CommentsController < ApplicationController
  # def create
  # 	@post = Post.find(params[:post_id])
  #   # define comment with the params we created
  #   @comment = @post.comments.create(params[:comment].permit(:name, :body))
  #   redirect_to post_path(@post)
  # end

  def new
    # @post = Post.find(params[:id])
	  @comment = Comment.new
  end

  def create
      # @user = User.find(session[:user_id])
      # @post = Post.find(params[:id])
		  @comment = Comment.create(comment_params)


        # body: params[:post][:body],
        # post_id: session[:post_id],
        # user_id: session[:user_id]
        # )
      flash[:notice] = "You have comment."
      redirect_to post_path
  #   else 
  #     render "posts"
		# end
  end

  private 
  def comment_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end
end
