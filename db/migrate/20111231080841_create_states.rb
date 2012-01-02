class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.references :country
      t.string :remarks
      t.boolean :status , :default =>true

      t.timestamps
    end
    add_index :states, :country_id
  end
end
