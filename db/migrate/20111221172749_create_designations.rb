class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.references :name
      t.text :description

      t.timestamps
    end
    add_index :designations, :name_id
  end
end
