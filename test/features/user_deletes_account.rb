
feature 'User deletes an account' do
    scenario 'they see user info on the page' do
        user = build(:user, first_name: "Heejae", last_name: "Han", phone_number: "5715814282", birthdate: "11/18/94", email: "hhan1194@gmail.com", username: "hhan1194", password: "1111", password_confirmation: "1111")
      visit user_path(user)

      expect(home_path.to have_css 'Welcome to Welp'
    end
  end