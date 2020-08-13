class ArticlesController < ApplicationController
  before_action :require_user

  def new
    @article = Article.new

    @categories = Category.all

  end

  def create
    @article = current_user.articles.build(article_params)
    @article.save

    if @article.save
      @article.categories << Category.find(category_ids)
      flash[:success] = 'Your article was created successfully'
      redirect_to root_path
    else
      flash.now[:danger] = 'Ups, something went wrong, please check the errors'
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image)
  end

  def category_ids
    params[:category][:id]
  end
end
