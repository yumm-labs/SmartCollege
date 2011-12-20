class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :registration_no
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :official_dob
      t.date :personnel_dob
      t.string :nationality
      t.string :religion
      t.string :category
      t.text :identification
      t.string :blood_group
      t.text :known_languages
      t.string :password

      t.timestamps
    end
  end
end
