class CreateWiki < ActiveRecord::Migration
  def up
    create_table :wikis do |t|
    end
  end

  def down
    drop_table :wikis
  end
end
