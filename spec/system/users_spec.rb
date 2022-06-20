require 'rails_helper'

RSpec.describe "User management function", type: :system do
  describe 'User registration function' do
    context 'When a new user is registered' do
      before do
        visit new_user_registration_path
        fill_in "user_first_name", with: 'thado'
        fill_in "user_last_name",	with: 'maloma'
        choose gender, with: 'male'
        fill_in "user_birthdate",	with: '06/05/1987'
        fill_in "user_email",	with: 'maloma@example.com'
        fill_in "user_password",	with: '12345678'
        fill_in "user_password_confirmation", with: '12345678'
        click_button 'Sign up'
        expect(page).to have_content ('Sign up')
      end
    end
  end

  def user_login
    visit new_session_path
    fill_in "Email", with: "maloma@example.com"
    fill_in "Password", with: "password"
    click_on "Log in"
    expect(page).to have_content ('Log in')
  end

end
