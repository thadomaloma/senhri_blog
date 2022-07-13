require 'rails_helper'

RSpec.describe "User management function", type: :system do
  describe 'User registration function' do
    context 'When a new user is registered' do
      before do
        visit new_user_registration_path
        fill_in "first_name", with: 'thado'
        fill_in "last_name",	with: 'maloma'
        choose "gender", with: 'male'
        fill_in "birthdate",	with: '2022-07-06 00:00:00'
        fill_in "email",	with: 'maloma@example.com'
        fill_in "password",	with: '123456'
        fill_in "password_confirmation", with: '123456'
        click_button 'Sign up'
      end
      it 'Registration completion is displayed' do
        expect(page).to have_content 'Account registration is complete.'
      end
      it 'Post button is displayed' do
        expect(page).to have_content 'Post an article'
      end
    end
  end

  describe 'Session function' do
    before do
      @user = User.create(first_name: "test_first", last_name: "test_last", email: "test@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
      visit new_user_session_path
      fill_in 'user_email', with: 'test@gmail.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
    end
    context 'When the user logs in' do
      it 'Login is displayed' do
        expect(page).to have_content 'You are now logged.'
      end
    end
  end

end
