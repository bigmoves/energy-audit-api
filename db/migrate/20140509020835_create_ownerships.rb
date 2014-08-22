class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :building_id
      t.integer :user_id
      t.integer :position
      t.datetime :created_at

      t.timestamps
    end
  end
end
