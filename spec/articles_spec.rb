require 'rails_helper'

RSpec.describe Article, type: :feature do
  scenario 'new article page' do
    visit new_article_path
    expect(page). to have_content('page')
  end
end
