class CreateMultimediaTag < ActiveRecord::Migration
  def up
    create_table :multimedia_tags do |t|
      t.references :multimedia
      t.integer :tag_with_type
      t.integer :tag_with_id
      t.integer :created_by, :updated_by
      t.timestamps
    end
  end

  def down
    drop_table :multimedia_tags
  end
end