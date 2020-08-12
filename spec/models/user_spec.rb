require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has associations' do
    should have_many(:articles).with_foreign_key(:author_id).dependent(:destroy)
    should have_many(:votes).dependent(:destroy)
  end

  it 'validates' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name).case_insensitive
    should validate_length_of(:name).is_at_least(3).is_at_most(20).on(:create)
  end
end
