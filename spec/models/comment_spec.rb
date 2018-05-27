require 'rails_helper'

describe Comment do

  context "commet content empty" do

    it "is not valid" do
      expect(Comment.new(body: "")).not_to be_valid
    end

  end

end
