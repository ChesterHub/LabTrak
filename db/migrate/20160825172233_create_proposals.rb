class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :abstract
      t.text :intro
      t.text :hypothesis
      t.text :method
      t.date :date_start
      t.date :date_end
      t.string :status

      t.timestamps null: false
    end
  end
end
