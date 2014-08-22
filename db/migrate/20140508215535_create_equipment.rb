class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :location
      t.string :manufacturer
      t.string :size
      t.integer :quantity
      t.string :model_number
      t.string :serial_number
      t.belongs_to :building, index: true
      t.belongs_to :space, index: true

      t.timestamps
    end
  end
end
