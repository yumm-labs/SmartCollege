class CreateSubjectCategories < ActiveRecord::Migration
  def change
    create_table :subject_categories do |t|
      t.references :name
      t.text :description

      t.timestamps
    end
    add_index :subject_categories, :name_id
  end
end
