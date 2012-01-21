class CreateHtml < ActiveRecord::Migration
  def up
    create_table :htmls do |t|
    end
  end

  def down
    drop_table :htmls
  end
end