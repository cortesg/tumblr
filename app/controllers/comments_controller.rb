class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
    # define comment with the params we created
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
  end
end
