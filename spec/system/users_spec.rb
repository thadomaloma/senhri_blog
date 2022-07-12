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

end
