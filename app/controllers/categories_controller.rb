class CategoriesController < ApplicationController
  # add before filter to create categories and 1 article per category
  def index
    categories = Category.includes(:articles).all
    articles = Article.all
    @most_popular = articles.most_popular
    @articles_by_cat = []
    categories.each do |cat|
      @articles_by_cat << recent_article(cat)
    end
  end

  def show
    @category = Category.includes(:articles).find(params[:id])
    recent_related_articles
  end

  private

  def recent_related_articles
    @recent_related_articles ||= @category.articles.ordered_by_most_recent
  end

  def recent_article(category)
    category.articles.ordered_by_most_recent.first
  end
end

# scope by :most_recent_article_by_category
# scope by :most voted article

# for images in views, use <%= url_for(@article.image) %>

# <%= cl_image_tag(@user.avatar.key, width: 200, crop: :scale) %>

# OR

# <%= cloudinary_url(@user.avatar.key, options = {}) %>

# if @article.image.attached?
# their image
# else
# default -> user.avatar.attach(params[:avatar]) MAYBE, I may have to reset the previos image, check more

# https://edgeguides.rubyonrails.org/active_storage_overview.html

# https://hackernoon.com/image-storage-in-rails-apps-using-cloudinary-and-active-storage-9w2u3yli

# https://hackernoon.com/image-storage-in-rails-apps-using-cloudinary-and-active-storage-9w2u3yli
