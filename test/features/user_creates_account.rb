
feature 'User creates an account' do
    scenario 'they see user info on the page' do
        user = build(:user, first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")
      visit user_path(user)

      expect(user_path(user)).to have_css 'Your Profile'
    end
  end