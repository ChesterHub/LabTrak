class Proposal < ApplicationRecord
  has_many :user_proposals
  has_many :users, through: :user_proposals
end
