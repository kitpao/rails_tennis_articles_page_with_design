class CategoriesController < ApplicationController
  # add before filter to create categories
  def index
    @articles = Article.all
    @most_popular = @articles.most_popular

    render json: @articles.most_popular
  end

  def show
    @category = Category.find(params[:id])
    related_articles

    render json: related_articles
  end

  private

  def related_articles
    @related_articles ||= @category.articles.ordered_by_most_recent
  end

  def popular
    @popular ||= @articles.includes(:vote).most_popular
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
