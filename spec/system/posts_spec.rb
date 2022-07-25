require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    @user = FactoryBot.create(:user1)
    @user2 = FactoryBot.create(:user2)
    @post = FactoryBot.create(:post, user_id: @user.id)
    @post2 = FactoryBot.create(:post2, user_id: @user2.id)
  end

  describe 'New creation function' do
    before do
      visit new_user_session_path
      fill_in 'email', with: 'maloma@example.com'
      fill_in 'password', with: '123456'
      click_button 'Log in'
      visit new_post_path
      fill_in "title", with: "test_title"
      fill_in "body", with: "test_body"
      click_button 'Create Post'
    end

    context 'When creating a new article' do
      it 'The created article is displayed' do
        expect(page).to have_content 'test_title'
      end
    end
  end
  describe 'List display function' do
    before do
      visit new_user_session_path
      fill_in 'user_email', with: 'maloma@example.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
      visit post_path
    end
    context 'When transitioning to the list screen' do
      it 'A list of created posts is displayed' do
        expect(page).to have_content 'test_title'
        expect(page).to have_content @user.body
      end
    end
  end
end
