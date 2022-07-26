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
      fill_in 'user_email', with: 'maloma@example.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
      visit new_post_path
      fill_in "post_title", with: "test_title"
      fill_in "post_body", with: "test_body"
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
      visit posts_path
    end
    context 'When transitioning to the list screen' do
      it 'A list of created posts is displayed' do
        expect(page).to have_content 'test_title'
      end
    end
    context 'When transitioning to the detail screen of an arbitrary article' do
      it 'The content of the corresponding task is displayed' do
        visit post_path(@post)
        expect(page).to have_content 'test_body'
      end
    end
  end

  describe 'Article editing function' do
    before do
      visit new_user_session_path
      fill_in 'user_email', with: 'maloma@example.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
      visit posts_path
    end
    context 'When editing an article' do
      it 'The content of the edit is displayed' do
        expect(page).to have_content 'test_body'
      end
    end
  end

  describe 'Article deletion function' do
    before do
      visit new_user_session_path
      fill_in 'user_email', with: 'maloma@example.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
    end
    context 'If you delete an article' do
      it 'Delete is displayed' do
        click_button 'delete'
        expect(page).to have_content 'Post has been deleted'
      end
    end
  end
end
