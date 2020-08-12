require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do
    it 'has associations' do
      should belong_to(:author).class_name('User')
      should have_many(:votes)
      should have_and_belong_to_many(:categories)

    end

    it 'validates' do
      should validate_presence_of(:title)
      should validate_uniqueness_of(:title).case_insensitive
      should validate_presence_of(:text)
      should validate_presence_of(:categories)
    end
  end

end
