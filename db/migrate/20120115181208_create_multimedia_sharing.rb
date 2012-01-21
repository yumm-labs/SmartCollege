class CreateMultimediaSharing < ActiveRecord::Migration
  def up
    create_table :multimedia_sharings do |t|
      t.references :multimedia
      t.text :description
      t.integer :share_with_type
      t.integer :share_with_id
      t.integer :created_by, :updated_by
      t.timestamps
    end
  end

  def down
    drop_table :multimedia_sharings
  end
end
