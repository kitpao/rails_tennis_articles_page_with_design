class ArticlesController < ApplicationController
  # Add filter to require login
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.author = User.first # current_user
    # add categories
    # add image

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
    params.require(:article).permit(:title, :text)
  end
  # use this in future controller:  a.categories << Category.first
end
