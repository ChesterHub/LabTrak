class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :proposal, index: true

      t.timestamps, null: false
      add_index :user_proposal, [:user_id, :proposal_id], unique: true
    end
  end
end
