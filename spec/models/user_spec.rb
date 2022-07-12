require 'rails_helper'

RSpec.describe User, type: :model do

    describe "Validation test" do
      context 'If the name is empty' do
        it "Get caught in validation" do
          user = FactoryBot.create(:user1)
          user.first_name = ""
          user.last_name = ""
        expect(user).not_to be_valid
        end
      end
      context 'If your email address is empty' do
      it 'Get caught in validation' do
        user = FactoryBot.create(:user1)
        user.email = ""
        expect(user).not_to be_valid
      end
    end
    context 'If the password is empty' do
      it 'Get caught in validation' do
        user = FactoryBot.create(:user1)
        user.password = ""
        expect(user).not_to be_valid
      end
    end
    context 'If the name is 20 characters or more' do
      it 'Get caught in validation' do
        user = FactoryBot.create(:user1)
        user.first_name = "a" * 25
        user.last_name = "a" * 25
        expect(user).not_to be_valid
      end
    end
    context 'If your email address is 50 characters or more' do
      it 'Get caught in validation' do
        user = FactoryBot.create(:user1)
        user.email = "a" * 50 + "@" + "gmail.com"
        expect(user).not_to be_valid
      end
    end
    context 'If your email address is 50 characters or less' do
      it 'be registered' do
        user = FactoryBot.create(:user1)
        user.email = "a" * 40 + "@" + "gmail.com"
        expect(user).to be_valid
      end
    end
    context 'If your name, email address and password are entered' do
      it 'be registered' do
        user = User.new(first_name: "test_first", last_name: "test_last", email: "test@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
        expect(user).to be_valid
      end
    end
  end
end
