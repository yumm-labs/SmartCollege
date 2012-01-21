class CreateVideo < ActiveRecord::Migration
  def up
    create_table :videos do |t|
    end
  end

  def down
    drop_table :videos
  end
end
