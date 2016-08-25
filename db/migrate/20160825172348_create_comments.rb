class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :proposal
      t.belongs_to :user

      t.text :body

      t.timestamps null: false
    end
  end
end
