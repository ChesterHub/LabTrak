class User < ApplicationRecord
  has_many :user_proposals
  has_many :proposals, through: :user_proposals
end
