require 'rails_helper'

describe user do
  before(:each) do
    @user = User.create!(first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")
  end

  it 'can be created' do
    expect(@user).to be_valid
  end

  it 'has a full name instance method' do
    expect(@user.full_name).to eq("Heejae Han")
  end
end