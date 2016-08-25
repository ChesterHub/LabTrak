class Proposal < ApplicationRecord
  has_many :user_proposals
  has_many :users, through: :user_proposals
  has_many :votes, dependent: :destroy
end
