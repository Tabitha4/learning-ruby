require 'rails_helper'

describe Comment do

  context "comment content empty" do
    it "is not valid" do
      expect(Comment.new(body: "")).not_to be_valid
    end
  end

end
