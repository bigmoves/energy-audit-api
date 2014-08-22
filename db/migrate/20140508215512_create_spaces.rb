class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :area
      t.belongs_to :building, index: true

      t.timestamps
    end
  end
end
