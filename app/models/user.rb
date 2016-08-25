class User < ApplicationRecord
  has_many :user_proposals
  has_many :proposals, through: :user_proposals
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
