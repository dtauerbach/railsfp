require 'rails_helper'

describe 'example' do
  it 'trivial test' do
    expect(1).to eq(1)
  end
  
  it 'homepage loading test', js: true, driver: :selenium do
    visit '/'
    expect(page).to have_content("asdff")
  end

end
