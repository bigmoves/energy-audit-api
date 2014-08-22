class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.text :description
      t.text :space_type
      t.text :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :area

      t.timestamps
    end
  end
end
