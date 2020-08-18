require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  describe 'homepage' do
    before :each do
      visit root_path
    end

    it 'displays homepage' do
      expect(page).to have_content 'Rogers cup 2020'
    end

    it 'does not display show categories page' do
      expect(page).to_not have_content 'Written by'
    end
  end

  describe 'show categories page' do
    before :each do
      visit 'categories/2'
    end

    it 'does not display homepage' do
      expect(page).to_not have_content 'Rogers cup 2020'
    end

    it 'displays show categories page' do
      expect(page).to have_content 'Written by'
    end
  end
end
