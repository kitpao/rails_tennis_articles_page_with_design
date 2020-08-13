class CategoriesController < ApplicationController
  def index
    # blank
  end

  def show
    # blank
  end
end

# scope by :most_recent_article_by_category
# scope by :most voted article

# for images in views, use <%= url_for(@article.image) %>

# <%= cl_image_tag(@user.avatar.key, width: 200, crop: :scale) %>

# OR

# <%= cloudinary_url(@user.avatar.key, options = {}) %>

# https://hackernoon.com/image-storage-in-rails-apps-using-cloudinary-and-active-storage-9w2u3yli
