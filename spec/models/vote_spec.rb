require 'rails_helper'

describe Vote do
  user = FactoryGirl.create(:user)
  proposal = FactoryGirl.create(:proposal)
  vote = FactoryGirl.create(:vote)
  user.votes << vote
  proposal.votes << vote

  describe "dependencies" do
    it "destroys the vote if its USER is destroyed" do
      user.destroy
      expect(Vote.last).to_not be vote
    end

    it "destroys the vote if its PROPOSAL is destroyed" do
      proposal.destroy
      expect(Vote.last).to_not be vote
    end
  end

end
