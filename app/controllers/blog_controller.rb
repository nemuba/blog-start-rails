class BlogController < ApplicationController
  def index
    @posts = Post.order(:created_at).page params[:page]
  end

  def about; end

  def contact; end
end
