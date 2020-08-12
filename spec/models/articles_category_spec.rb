require 'rails_helper'

RSpec.describe ArticlesCategory, type: :model do
  describe ArticlesCategory do
    it 'has associations' do
      should belong_to(:article)
      should belong_to(:category)
    end
  end
end
