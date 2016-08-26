require 'rails_helper'

describe User do
  user = FactoryGirl.build(:user)

  describe "user associations" do
    it "can have many votes" do
      expect(user.votes).to_not be nil
    end

    it "can have many comments" do
      expect(user.comments).to_not be nil
    end

    it "can have many proposals" do
      expect(user.proposals).to_not be nil
    end
  end

end
