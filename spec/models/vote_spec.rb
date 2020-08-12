require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe Vote do
    it 'has associations' do
      should belong_to(:user)
      should belong_to(:article)
    end

    it 'validates' do
      should validate_uniqueness_of(:user_id).scoped_to(:article_id)
    end
  end
end
