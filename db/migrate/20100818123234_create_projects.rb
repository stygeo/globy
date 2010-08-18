class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :api_key
      t.integer :owner_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
