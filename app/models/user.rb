class User < ActiveRecord::Base	
	acts_as_authentic do |c|
		c.login_field = :email
	end

	has_many :user_subscriptions, :foreign_key => :subscriber_id
	has_many :subscriptions, :through => :user_subscriptions
	has_many :projects, :foreign_key => :owner_id
	
	validates :email, :uniqueness => true, :presence => true
	validates :firstname, :lastname, :presence => true
end
