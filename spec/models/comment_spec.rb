require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) {User.create(first_name: "thado", last_name: "maloma", gender: "male", birthdate: DateTime.now, email: "maloma@example.com", password: "12345678", password_confirmation: "12345678")}
  let(:post) {Post.create(title: "post_title", body: "Lorem ipsum", user_id: user.id)}
  subject {
      described_class.new(body: "comment test", post_id: post.id, user_id: user.id)
    }

  describe "validations" do
      it "is valid with valid attributes" do
          expect(subject).to be_valid
      end
      it "is not valid without a body" do
          subject.body = nil
          expect(subject).to_not be_valid
      end
      it "is not valid without a user_id" do
          subject.user_id = nil
          expect(subject).to_not be_valid
      end
      it "is not valid without a post_id" do
          subject.post_id = nil
          expect(subject).to_not be_valid
      end
  end
end
