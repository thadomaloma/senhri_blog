require 'rails_helper'

RSpec.describe Post, type: :model do

    describe "Validation test" do
      before do
        @user = FactoryBot.create(:user1)
      end
      context 'If the title is empty' do
        it "Get caught in validation" do
          post = Post.new(title: '', body: 'Failure test')
            expect(post).not_to be_valid
        end
      end
      context 'If the article details are empty' do
      it 'Get caught in validation' do
        post = Post.new(title: "Failure test", body: "")
        expect(post).to be_invalid
      end
    end
    context 'If the article title and details are included' do
      it 'Validation passes' do
        post = Post.new(title: "test", body: "success", user_id: @user.id)
        expect(post).to be_valid
      end
    end
  end
end
