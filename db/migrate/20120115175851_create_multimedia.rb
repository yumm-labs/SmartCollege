class CreateMultimedia < ActiveRecord::Migration
  def up
    create_table :multimedia do |t|
      t.string :name
      t.text :description, :url
      t.string :path
      t.string :multimedia_type
      t.integer :multimedia_id
      t.integer :created_by, :updated_by
      t.timestamps
    end
  end

  def down
    drop_table :multimedia
  end
end
