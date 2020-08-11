class User < ApplicationRecord
  has_many :articles, dependent: :destroy
end
