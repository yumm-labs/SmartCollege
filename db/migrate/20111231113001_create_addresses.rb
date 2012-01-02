class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addressable_type
      t.integer :addressable_id
      t.string :line1
      t.string :line2
      t.integer :city_id
      t.integer :state_id
      t.integer :country_id
      t.integer :zip_code
      t.string :mobile_no
      t.string :residential_phone_no
      t.string :address_type
      t.string :email
      t.timestamps

      t.timestamps
    end
  end
end
