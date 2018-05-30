require 'rails_helper'

describe User, type: :model do
    it "should not validate users without an email address" do
      @user = FactoryBot.build(:user, email: "not_an_email")
      expect(@user).to_not be_valid
    end

    context "Testing Validations password not 6 digit min" do
      it "will not validate" do
        @user = FactoryBot.build(:user, email: "cant@count.com", password: "1234" )
        expect(@user).to_not be_valid
      end
    end

end
