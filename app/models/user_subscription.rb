class UserSubscription < ActiveRecord::Base
	belongs_to :subscriber, :class_name => 	"User"
	belongs_to :subscription, :class_name => "Project"
end