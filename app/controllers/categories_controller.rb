class CategoriesController < ApplicationController

  def index
    @categories = Category.includes(:articles).all
    articles = Article.all
    @most_popular = articles.most_popular
    @articles_by_cat = []
    @categories.each do |cat|
      @articles_by_cat << recent_article(cat)
    end
  end

  def show
    @category = Category.includes(:articles).find(params[:id])
    recent_related_articles
  end

  private

  def recent_related_articles
    @recent_related_articles ||= @category.articles.ordered_by_most_recent.limit(4)
  end

  def recent_article(category)
    category.articles.ordered_by_most_recent.first
  end
end
