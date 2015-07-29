require 'rails_helper'

describe 'homepage' do
  it 'page loads and contains basic content', js: true, driver: :selenium do
    visit '/'
    expect(page).to have_content("What are you worth")
  end
end
