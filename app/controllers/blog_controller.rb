class BlogController < ApplicationController
  before_action :set_post, only: [:show_post]

  def index
    @posts = Post.order(:created_at).page params[:page]
  end

  def show_post
    # code
  end

  def about; end

  def contact; end

  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(comment_params)
    redirect_to show_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
