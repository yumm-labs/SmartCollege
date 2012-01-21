class CreateDocument < ActiveRecord::Migration
  def up
    create_table :documents do |t|
    end
  end

  def down
    drop_table :documents
  end
end
