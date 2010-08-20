class AddDeveloperToken < ActiveRecord::Migration
  def self.up
		alter_table :users do |t|
      t.boolean :developer
		end
  end

  def self.down
  end
end
