class Project < ActiveRecord::Base
	belongs_to :owner, :class_name => User
	
	has_many :locations
	has_many :user_subscriptions, :foreign_key => :subscription_id
	has_many :users, :through => :user_subscriptions
	
	validates :name, :presence => true, :uniqueness => true
	
	before_create :generate_api_key
	
	protected
	def generate_api_key
		require 'active_support/secure_random'
		self.api_key = ActiveSupport::SecureRandom.hex(32)
	end
end
