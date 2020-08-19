require 'rails_helper'

RSpec.feature 'Articles creation', type: :feature do
  describe 'sign in and enters article new page' do
    before :each do
      user = User.create!(name: 'test')
      article = Article.create!(author: user, title: 'A title', text: 'Some text')
      Vote.create!(user: user, article: article)
      visit 'log_in'
      fill_in 'session_name', with: 'test'
      click_button 'commit'
      click_link('Write as test')
    end

    it 'displays new article page' do
      expect(page).to have_content 'Write your article!'
    end

    it 'creates an article' do
      fill_in 'article_title', with: 'A new title'
      fill_in 'article_text', with: 'Some new text'
      click_button 'commit'
      expect(page).to have_content 'A new title'
    end

    it 'does not allows a new article when logged out' do
      click_link('Logout')
      visit 'articles/new'
      expect(page).to have_content 'You must be logged in to perform this action'
    end
  end
end
