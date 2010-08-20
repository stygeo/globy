class User < ActiveRecord::Base	
	acts_as_authentic do |c|
		c.login_field = :email
	end

	has_many :user_subscriptions, :foreign_key => :user_id
	has_many :subscriptions, :through => :user_subscriptions
	has_many :projects, :foreign_key => :owner_id
	
	validates :email, :uniqueness => true, :presence => true
	validates :firstname, :lastname, :presence => true
	
	def name
		[self.firstname, self.lastname].join(" ")
	end
	
	def feed(amount)
		project_ids = self.projects.map(&:id)
		UserSubscription.where('projects.owner_id = ? AND user_subscriptions.subscription_id IN (?)', self.id, project_ids).includes(:subscription).order('user_subscriptions.created_at DESC').limit(amount)
	end
end
