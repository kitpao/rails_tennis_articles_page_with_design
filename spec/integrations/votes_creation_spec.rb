require 'rails_helper'

RSpec.feature 'Votes creation', type: :feature do
  describe 'sign in and enters categories page' do
    before :each do
      user = User.create!(name: 'test')
      article = Article.create!(author: user, title: 'A title', text: 'Some text')
      Vote.create!(user: user, article: article)
      visit 'log_in'
      fill_in 'session_name', with: 'test'
      click_button 'commit'
      visit 'categories/1'
    end

    it 'displays show categories page' do
      expect(page).to have_content '(°-°) Click to Vote!'
    end

    it 'user can vote' do
      click_link('(°-°) Click to Vote!', match: :first)
      expect(page).to have_content 'You voted for an article'
    end

    it 'user can unvote' do
      click_link('(°-°) Click to Vote!', match: :first)
      click_link('(^.^)b Click to Unvote')
      expect(page).to have_content 'You unvoted an article'
    end

    it 'not allows votation when logged out' do
      click_link('Logout')
      click_link('Tournaments', match: :first)
      expect(page).to_not have_content 'Click to vote!'
    end
  end
end
