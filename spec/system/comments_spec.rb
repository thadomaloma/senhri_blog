require 'rails_helper'

RSpec.describe "Comments", type: :system do
  before do
    @user = FactoryBot.create(:user1)
    @user2 = FactoryBot.create(:user2)
    @post = FactoryBot.create(:post, user_id: @user.id)
    @post2 = FactoryBot.create(:post2, user_id: @user2.id)
  end

  describe 'Comment posting function' do
    before do
      visit new_user_session_path
      fill_in 'user_email', with: 'maloma@example.com'
      fill_in 'user_password', with: '123456'
      click_button 'Log in'
    end
    context 'If you post a comment' do
      it 'The posted comment is displayed' do
        visit post_path(@post)
        fill_in "comment_body", with: "Test_comment"
        click_button 'Comment'
        expect(page).to have_content 'Test_comment'
      end
    end
    context 'If you delete the comment' do
      it 'Comments are deleted and disappear' do
        visit post_path(@post)
        click_button 'delete'
        expect(page).not_to have_content 'Test_comment'
        end
      end
    end
  end
