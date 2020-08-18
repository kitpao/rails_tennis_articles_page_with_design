require 'rails_helper'
# Rails.application.load_seed

RSpec.feature 'Authentications', type: :feature do
  describe 'the login/out process' do
    before :each do
      User.create!(name: 'test')
      visit 'log_in'
      fill_in 'session_name', with: 'test'
      click_button 'commit'
    end

    it 'signs me in' do
      expect(page).to have_content 'Write as test'
    end

    it 'signs me out' do
      click_link('Log out')
      expect(page).to have_content 'Log in'
    end
  end
end
