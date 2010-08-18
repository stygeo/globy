class Project < ActiveRecord::Base
	belongs_to :owner, :class_name => User
	has_many :subscribers, :through => :user_subscriptions
	
	scope :owned_by, ->(owner_id) {
		joins(:users).
		where("owner_id = ?", owner_id)
	}
	
	validates :name, :presence => true, :uniqueness => true
	
	before_create :generate_api_key
	
	protected
	def generate_api_key
		require 'active_support/secure_random'
		self.api_key = ActiveSupport::SecureRandom.hex(32)
	end
end
