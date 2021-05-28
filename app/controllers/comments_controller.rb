class CommentsController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    # エラー原因:redirect_toの指定先がない
    # 修正の意図:指定先を指定
    redirect_to blog_path(@blog)
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content, :blog_id)
  end
end
