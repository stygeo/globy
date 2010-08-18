class UserSubscription < ActiveRecord::Base
	belongs_to :subscriber, :foreign_key => :user_id
	belongs_to :subscription, :source => :project, :foreign_key => :project_id
end