require 'rails_helper'

RSpec.describe Category, type: :model do
  describe Category do
    it 'has associations' do
      should have_and_belong_to_many(:articles)
    end
  end
end
