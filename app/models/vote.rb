class Vote < ApplicationRecord
  belongs_to :user
  #unique combination user-post: validates :user_id, uniqueness: { scope: :article_id }
end
