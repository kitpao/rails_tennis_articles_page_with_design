class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article
  # unique combination user-post: validates :user_id, uniqueness: { scope: :article_id }
end
