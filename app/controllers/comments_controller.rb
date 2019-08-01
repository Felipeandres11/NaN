class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comments_params)
    redirect_to posts_path(@post)
  end

  private
    def comments_params
      params.require(:comment).permit(:comment)
    end
end
