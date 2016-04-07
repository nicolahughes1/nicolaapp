require "rails_helper"

describe User, :type => :model do
  it "should not validate users withoput an email address" do
    # Overwrite factory email.
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end