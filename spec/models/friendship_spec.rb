require 'rails_helper'

RSpec.describe Friendship, type: :model do
  let(:user1) {User.create(first_name: "thado", last_name: "maloma", gender: "male", birthdate: DateTime.now, email: "maloma@example.com", password: "12345678", password_confirmation: "12345678")}
  let(:user2) {User.create(first_name: "singson", last_name: "mandy", gender: "female", birthdate: DateTime.now, email: "mandy@example.com", password: "12345678", password_confirmation: "12345678")}
  subject {
      described_class.new(requestee_id: user1.id, requestor_id: user2.id, status: true)
    }

  describe "validations" do
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a requestee_id" do
        subject.requestee_id = nil
        expect(subject).to_not be_valid
    end
  end
end
