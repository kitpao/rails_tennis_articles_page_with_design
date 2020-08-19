require 'rails_helper'
Rails.application.load_seed

RSpec.describe 'User', type: :feature do
  scenario 'can signup' do
    visit sign_up_path
    expect(page).to have_content('Sign up here')
  end
end
