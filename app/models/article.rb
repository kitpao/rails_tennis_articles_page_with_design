class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_and_belongs_to_many :categories
  has_one_attached :image

  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 60 }
  validates :text, presence: true
  # add a default image
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  scope :most_popular, -> { find_by(votes_count: maximum(:votes_count)) }

  before_validation(on: :create) do
    title.capitalize!
    text.capitalize!
  end
end
