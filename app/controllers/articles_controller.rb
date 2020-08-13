class ArticlesController < ApplicationController
  before_action :require_user

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    # add categories

    if @article.save
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
  # use this in future controller:  a.categories << Category.first
end
