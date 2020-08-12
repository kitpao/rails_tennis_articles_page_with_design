class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
end
