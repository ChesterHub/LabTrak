class CreateUserProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :user_proposals do |t|

      t.timestamps
    end
  end
end
