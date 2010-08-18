class User < ActiveRecord::Base	
	acts_as_authentic do |c|
		c.login_field = :email
	end

	has_many :user_subscriptions
	has_many :subscriptions, :through => :user_subscriptions
	has_many :projects, :foreign_key => :owner_id
	
	validates :email, :uniqueness => true, :presence => true
	validates :firstname, :lastname, :presence => true
	validates :password, :password_confirmation, :presence => true, :if => ->(user) { ((user.password.present? || user.password_confirmation) && user.new_record?)}
end
