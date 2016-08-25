class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :name, null: false
      t.integer :quantity
      t.belongs_to :proposal

      t.timestamps, null: false
    end
  end
end
