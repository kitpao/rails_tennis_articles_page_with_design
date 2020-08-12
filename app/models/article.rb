class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
  has_one_attached :image

  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :text, presence: true
  validates :categories, presence: true
  # use this in future controller:  a.categories << Category.first
  # add a default image
  # scope by :most_recent_by_category
  # scope by :most voted
end
