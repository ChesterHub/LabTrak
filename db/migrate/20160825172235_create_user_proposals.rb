class CreateUserProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :user_proposals, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :proposal, index: true

      t.timestamps
    end
  end
end
