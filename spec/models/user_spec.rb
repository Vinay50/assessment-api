RSpec.describe User, type: :model do
  require "spec_helper"

  before(:all) do
    @user1 = create(:user)
  end

  it "valid user with valid parameters" do
    expect(@user1).to be_valid
  end

  it "is invalid without password and confirm password" do
    user2 = build(:user, email: "viee@gmail.com", password: "")
    expect(user2).not_to be_valid
  end

  it "is invalid without password" do
    user2 = build(:user, email: "viee@gmail.com", password: "viee2423423")
    expect(user2).not_to be_valid
  end

  it "is valid without an email" do
    user2 = build(:user, password_confirmation: "wee42424243", password: "wee42424243")
    expect(user2).not_to be_valid
  end
end