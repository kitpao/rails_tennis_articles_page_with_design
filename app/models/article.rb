class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
end
