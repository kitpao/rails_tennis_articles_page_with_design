class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
  has_one_attached :image

  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :text, presence: true
  # add a default image
  # scope by :most_recent_by_category
  # scope by :most voted
end
