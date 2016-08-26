class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :proposal

  # validates :user, uniqueness: { scope: :comment,
                                    # message: "User can only vote on this comment one time" }

end
