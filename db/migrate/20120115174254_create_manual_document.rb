class CreateManualDocument < ActiveRecord::Migration
  def up
    create_table :manual_documents do |t|
      t.text :content
    end
  end

  def down
    drop_table :manual_documents
  end
end