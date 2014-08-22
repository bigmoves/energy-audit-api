class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.string :type
      t.integer :size
      t.string :url
      t.belongs_to :building, index: true
      t.belongs_to :equipment, index: true

      t.timestamps
    end
  end
end
