require 'rails_helper'

describe 'Route to view' do
  it 'has an index page' do
    visit users_path
    expect(page.status_code).to eq(200)
  end
end

describe 'Login page' do
  it 'asks for username' do
    visit login_path
    expect(page).to have_content(/Username/)
  end
end

describe 'Route to stats' do
it 'has an stats page' do
  visit stats_path
  expect(page.status_code).to eq(200)
end
end

describe 'Route to contact' do
  it 'has a contact page' do
    visit contact_path
    expect(page.status_code).to eq(200)
  end
  end

describe 'form page' do
  it 'renders the form with the new action' do
    visit new_user_path
    expect(page).to have_content("Create an account with us!")
  end

  it 'ensures user form has submit button' do
    visit new_user_path
    expect(page).to have_content("Submit")
  end







  
end

