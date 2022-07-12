require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe "Validation test" do
    context 'If the comment content is empty' do
      it "Get caught in validation" do
        comment = FactoryBot.build(:comment, body: nil)
          expect(comment).not_to be_valid
      end
    end
  end
end
