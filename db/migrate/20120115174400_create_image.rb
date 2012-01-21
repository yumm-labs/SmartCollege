class CreateImage < ActiveRecord::Migration
  def up
    create_table :images do |t|
    end
  end

  def down
    drop_table :images
  end
end
