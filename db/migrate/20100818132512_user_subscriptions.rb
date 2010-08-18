class UserSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :user_subscriptions do |t|
			t.integer :user_id
			t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_subscriptions
  end
end
