class CommentsController < ApplicationController

  def new
	  @comment = Comment.new
  end

  def create
    # find a post by the foreign key post id
    @post = Post.find(params[:post_id])
    # define comment with the params we created
    @comment = @post.comments.create(params[:comment].permit(:body))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private 
    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end

end
