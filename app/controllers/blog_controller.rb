class BlogController < ApplicationController
  before_action :set_post, only: [:show_post]

  def index
    if params[:search].present?
      if !params[:search].blank?
        @count = Post.search(params[:search]).count
        if @count != 0
          @search = "Resultado da pesquisa: #{@count} post(s) encontrados !"
          @posts = Post.search(params[:search]).order(:title).page params[:page]
        else
          @search = 'Sua pesquisa não foi encontrado !'
          @posts = Post.order(:created_at).page params[:page]
        end
      elsif params[:search].blank?
        @search = 'Digite sua Pesquisa !'
        @posts = Post.order(:created_at).page params[:page]
      end
    else
      @posts = Post.order(:created_at).page params[:page]
    end
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
    params.require(:comment).permit(:commenter, :body, :search)
  end
end
