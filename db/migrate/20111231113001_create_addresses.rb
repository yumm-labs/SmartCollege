class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addressable_type
      t.integer :addressable_id
      t.string :address_type
      t.string :line1
      t.string :line2
      t.integer :city_id
      t.integer :state_id
      t.integer :country_id
      t.string :pincode
      t.string :contact_no
      t.string :email

      t.timestamps
    end
  end
end
