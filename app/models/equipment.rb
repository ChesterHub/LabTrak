class Equipment < ApplicationRecord
  belongs_to :proposal

  validates :name, presence: true
end
