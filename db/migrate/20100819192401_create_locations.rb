class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :project_id
      t.integer :user_id
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
