class Proposal < ApplicationRecord
  has_many :user_proposals
  has_many :users, through: :user_proposals
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def self.by_votes
    Proposal.all.sort { |a, b| b.votes.count <=> a.votes.count }
  end
end
