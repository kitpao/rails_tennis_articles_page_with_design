class Category < ApplicationRecord
  has_and_belongs_to_many :articles
  # scope by category.most_recent_article
end
