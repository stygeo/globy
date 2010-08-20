class UserSubscription < ActiveRecord::Base
	belongs_to :user
	belongs_to :subscription, :class_name => "Project"
	
	scope :last, ->(amount) do
		sort_by(:created_at).
		limit(amount)
	end
end