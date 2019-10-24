require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  describe User, '#full_name' do
  it 'returns the concatenated first and last name' do
    user = build(:user, first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")

    expect(user.full_name).to eq 'Heejae Han'
  end

  describe User, '#display_name' do
  it 'returns a capitalized username' do
    user = build(:user, first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")

    expect(User.display_name.to eq 'Hhan1194'
  end
end
