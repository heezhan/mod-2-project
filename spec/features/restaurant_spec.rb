require 'rails_helper'

describe 'Route to index' do
  it 'has an index page' do
    visit restaurants_path
    expect(page.status_code).to eq(200)
  end
end


describe 'Search button' do
  it 'has a search button' do
    visit restaurants_path
    expect(page).to have_content(/Search/)
  end
end

